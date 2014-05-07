require 'bundler'
Bundler.require

get '/' do
redirect '/lunches'
end

get '/lunches' do
  connection = PG.connect(:dbname => 'wdi_lunch')
  sql_statement = 'SELECT * FROM lunches;'
  response = connection.exec(sql_statement)

  @lunches = response.map do |lunch|
    {'lunch_name'=>lunch['lunch_name'], 'picked_count'=>lunch['picked_count']}
  end

  connection.close
erb :index
end


get '/lunches/new' do

  erb :new
end


post '/lunches/create' do
  restaurant = params[:restaurant]
  if restaurant ==""
  else
    connection = PG.connect(:dbname => 'wdi_lunch')
    check = "SELECT lunch_name FROM lunches WHERE lunch_name = '#{restaurant}';"
    response = connection.exec(check)
    if response.first
      sql_statement = "UPDATE lunches SET picked_count = picked_count + 1 WHERE lunch_name = '#{restaurant}';"
    else
      sql_statement = "INSERT INTO lunches (lunch_name, picked_count) VALUES ('#{restaurant}', 1);"
    end

    connection.exec(sql_statement)

    connection.close
  end
  redirect '/lunches'
end

get '/lunches/random' do
connection = PG.connect(:dbname => 'wdi_lunch')
random = "SELECT lunch_name FROM lunches;"
response = connection.exec(random)
selection = response.map do |i|
  i['lunch_name']
end
@yours = selection.sample
connection.close
erb :random
end

