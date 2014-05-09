
# AFTER sql has been run in pqsl!!

require 'pg'
require 'active_record'

# Connect to database
database_name = "grocery_store_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

# Define your models
class Cuisinetype < ActiveRecord::Base
  has_many :fooditems 
end

class Fooditem < ActiveRecord::Base
  belongs_to :cuisinetype  
end


# Test out the association methods!!
my_fooditem1 = Fooditem.create({name: 'Pasta'})
my_fooditem2 = Fooditem.create({name: 'Rice'})
my_fooditem3 = Fooditem.create({name: 'Pizza'})
my_cuisinetype1 = Cuisinetype.create({cuisine: 'Italian'})
my_cuisinetype2 = Cuisinetype.create({cuisine: 'Chinese'})

my_cuisinetype1.fooditems << my_fooditem1
my_cuisinetype1.fooditems << my_fooditem3
my_cuisinetype2.fooditems << my_fooditem2

# Did it work?
puts "Italian Cuisine:"
my_cuisinetype1.fooditems.each { |fooditem| puts fooditem.name }

puts "Chinese Cuisine:"
my_cuisinetype2.fooditems.each { |fooditem| puts fooditem.name }
