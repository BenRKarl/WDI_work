require 'bundler'
Bundler.require

get '/' do
redirect '/lunches'
end

get '/lunches' do
  #display all lunches
  connection = PG.connect(:dbname => 'wdi_lunch')
  sql_statement = 'SELECT * FROM lunches;'
  response = connection.exec(sql_statement)

  @lunches = response.map do |lunch|
    {'lunch_name'=>lunch['lunch_name'], 'picked_count'=>lunch['picked_count']}
  end
  connection.close
  #display a create lunch button which
  #submits a GET request to /lunches/new
  erb :index
end

get '/lunches/new' do
#display form with fields for name of lunch and the restaurant
#display a submit button: a POST request to
#/lunches/create. This should create
#a new lunch record in the database and redirect to /lunches
erb :show
end

post '/lunches/create' do
new_lunch_name = params[:new_lunch_name]
restaurant_name = params[:restaurant_name]
connection = PG.connect(:dbname => 'wdi_lunch')
sql_statement = "INSERT INTO lunches (lunch_name) VALUES ('#{new_lunch_name}');"
response = connection.exec(sql_statement)
connection.close
redirect '/lunches'
erb :index
end

get '/lunches/random' do
#display a single randomly selected record from the database
#picked_count should be incremented by 1 when chosen
end
