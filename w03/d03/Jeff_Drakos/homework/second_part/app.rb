CREATE DATABASE restaurants;

CREATE TABLE users
(
id serial4 PRIMARY KEY,
name varchar(255)
);

CREATE TABLE restaurants
(
id serial4 PRIMARY KEY,
resturant_name varchar(255)
rating integer,
resturant_type varchar(255),
user_id integer
);

require 'pg'
require 'activerecord'


database_url = ENV['DATABASE_URL'] || 'postgres://localhost/restaurants'
ActiveRecord::Base.establish_connection(database_url)

class User < ActiveRecord::Base
has_many :restaurants
end

class Restaurant < ActiveRecord::Base
belongs_to :user
end

new_user = User.new({name: 'Jay Dray', email: jeffdrakos@gmail.com})
new_restaurant = Restaurant.new({restaurant_name: "Greek Restaurant", rating: '5', resturant_type: 'Greek'})
new_user.restaurants << new_restaurant
