require 'bundler'
Bundler.require

get '/' do
  redirect '/lunches'
end

get '/lunches' do
  connection = PG.connect(:dbname => 'wdi_lunch')
  all = connection.exec("SELECT * FROM lunch;")
  @lunches = all
  connection.close
  erb :index
end

get '/lunches/new' do
  erb :new
end

post '/lunches/create' do
  connection = PG.connect(:dbname => 'wdi_lunch')
  lunch_name = params["lunch_name"]
  restaurant = params["restaurant"]
  all = connection.exec("INSERT INTO lunch (lunch_name, restaurant) VALUES ('#{lunch_name}', '#{restaurant}') RETURNING *;")
  @lunches = all
  connection.close
  redirect '/lunches'
end

get '/lunches/random' do
  connection = PG.connect(:dbname => 'wdi_lunch')
  @random = connection.exec("SELECT restaurant FROM lunch ORDER BY RANDOM() LIMIT 1;")
  connection.close
  erb :random
end
