require "bundler"
Bundler.require

def add_lunch(lunch_name)
  connection = PG.connect(:dbname => 'wdi_lunches')
  connection.exec("
    UPDATE lunches
    SET picked_count = picked_count + 1
    WHERE lunch_name = '#{lunch_name}';
    ")
  connection.close
end

get "/" do
    redirect "/lunches"
end

get "/lunches" do
    connection = PG.connect(:dbname => 'wdi_lunches')
    @all_lunches = connection.exec("SELECT * FROM lunches;")
    erb :index
end

get "/lunches/new" do
    erb :new
end

post "/lunches/create" do
    connection = PG.connect(:dbname => 'wdi_lunches')

    lunch_name = params[:lunch_name]
    restaurant_name = params[:restaurant_name]


  if connection.exec("SELECT EXISTS (SELECT true FROM lunches WHERE lunch_name='#{lunch_name}');")
    add_lunch(lunch_name)
  else
    connection.exec("
      INSERT INTO lunches (lunch_name, picked_count, restaurant_name)
      VALUES ('#{lunch_name}', 1, '#{restaurant_name}');
      ")
  end

    connection.close
    redirect "/lunches"
end

get "/lunches/random" do
    connection = PG.connect(:dbname => 'wdi_lunches')
    @random_lunch = connection.exec(
    "SELECT * FROM lunches ORDER BY RANDOM() LIMIT 1;"
    )
    add_lunch(@random_lunch.to_a.first["lunch_name"])
    connection.close
    erb :random
end