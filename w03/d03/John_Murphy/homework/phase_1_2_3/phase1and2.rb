CREATE DATABASE recommendation_app;

CREATE TABLE users
(
id serial4 PRIMARY KEY,
name varchar(255),
email varchar(255) DEFAULT
);

CREATE TABLE recommendations
(
id serial4 PRIMARY KEY,
what? varchar(255),
what_detail varchar(255),
where? varchar(255),
when? varchar(255),
why? varchar(255),
address varchar(255) DEFAULT,
latitude varchar(255) DEFAULT,
longitude varchar(255) DEFAULT,
user_id integer
);

require 'pg'
require 'activerecord'


database_url = ENV['DATABASE_URL'] || 'postgres://localhost/recommendation_app'
ActiveRecord::Base.establish_connection(database_url)

class User < ActiveRecord::Base
has_many :recommendations
end

class Recommendation < ActiveRecord::Base
belongs_to :user
end

new_user = User.new({name: 'John Murphy', email: jdwmurph@gmail.com})
new_recommendation = Recommendation.new({what?: 'Buffalo Wings', what_detail: 'Buffalo Wings served with Blue Cheese and Celery.', where?: 'Archie Moores is a bar and restaurant, and has a casual environment.', when?: 'Good for lunch, takeout, dinner. Not for a first date.', why?: 'Archie Moores has the best wings in CT and are a must for foodies/wing-lovers who are in New Haven. Getting them with the nachos or nachos grande is a hearty feast.'})
new_user.recommendations << new_recommendation

puts "User:" + new_user.name
puts "Recommendation: " + " What: " + new_user.recommendations.first.what? + " A little more info: " + new_user.recommendations.first.what_detail + " Where: " + new_user.recommendations.first.where? + " When " + new_user.recommendations.first.when? + " Why: " + new_user.recommendations.first.why?
