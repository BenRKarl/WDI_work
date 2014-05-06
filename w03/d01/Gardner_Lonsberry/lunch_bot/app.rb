require "bundler"
Bundler.require

# Method that increments the 'picked_count' by 1 for a given 'lunch_name'
def add_lunch(lunch_name)
connection = PG.connect(:dbname => 'wdi_lunches')
connection.exec("
UPDATE lunches
 SET picked_count = picked_count + 1
 WHERE lunch_name = '#{lunch_name}';
 ")
 connection.close
 end
 
 # Redirects the root to '/lunches'
 get "/" do
    redirect "/lunches"
 end
 
 # pulls info from all entries to display in index.erb
 get "/lunches" do
     connection = PG.connect(:dbname => 'wdi_lunches')
     @all_lunches = connection.exec("SELECT * FROM lunches;")
     erb :index
 end
 
# Page that accepts user input to create a new lunch entry
 get "/lunches/new" do
     erb :new
 end
 
 # Handles new lunch entry to table
 post "/lunches/create" do
     connection = PG.connect(:dbname => 'wdi_lunches')
 
     lunch_name = params[:lunch_name]
     restaurant_name = params[:restaurant_name]
  
# Checks whether an entry already exists
 # If it does it increments that entry's 'picked_count' by one
 # If it doesn't exist it creates a new entry and sets the 'picked_count' to 1
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
 
 # This selects a random lunch to display in '/random' and increments that 'lunch_name' by 1 after selected
 get "/lunches/random" do
     connection = PG.connect(:dbname => 'wdi_lunches')
     @random_lunch = connection.exec(
     "SELECT * FROM lunches ORDER BY RANDOM() LIMIT 1;"
     )
     add_lunch(@random_lunch.to_a.first["lunch_name"])
     connection.close
     erb :random
 end
