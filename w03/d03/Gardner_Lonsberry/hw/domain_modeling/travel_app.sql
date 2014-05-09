require 'pg'
require 'active_record'

# SQL commands
CREATE DATABASE travel_app

\c travel_app

CREATE TABLE traveler
( 
id serial4 PRIMARY KEY,
user_id integer,
name varchar(255),
email varchar(255),
mood varchar(100)
);

CREATE TABLE log
(
id serial4 PRIMARY KEY,
entry varchar(500)
);

CREATE TABLE entry
( 
id serial4 PRIMARY KEY,
location varchar(500),
location_id integer,
time-stamp varchar (300),
body varchar(10000),
title varchar (400)
);


# Ruby / Activerecord
database_name = travel_app
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")


# Define your models
class Log_entries < ActiveRecord::Base
  belongs_to :traveler
end

class Traveler < ActiveRecord::Base
  has_many :entry
end


# Test out the association methods!!
new_user = User.new({name: 'Gardner Lonsberry' ,email: g@imcool.co})
new_entry = entry.create({entry: 'Day_01'})

traveler.new_entry << entry





gemfile


+source 'https://rubygems.org'
 +
 +gem 'sinatra'
 +gem 'sinatra-reloader'
 +
 +gem 'pry'
 +
 +gem 'sinatra-activerecord'
 +gem 'pg'



ROUTES

#create
#display entry index
get '/entry' do 
end

# entry interface to create new entry
get 'entry/new' do
end
# create new entry
post '/entry' do
end

# read
# display a specific entry
get /entry/#{entry_id} do
end

# update
# edit a specific entry
get /entry/#entry_id/edit do
end

# actually update the specific entry
PUT /entry/#entry_id do
end

# delete
# delete a specific entry
delete /products/#entry_id do
