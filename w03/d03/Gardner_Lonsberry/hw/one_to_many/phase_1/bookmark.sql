# AFTER sql has been run in pqsl!!

require 'pg'
require 'active_record'

# Connect to database
database_name = "bookmarks"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")


# Define your models
class Bookmark < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :bookmarks
end


# Test out the association methods!!
my_user = User.create({username: 'Gardner'})
my_bookmark = Bookmark.create({title: 'Kim Kardashian eating eggplants.'})
my_user.bookmarks << my_bookmark

# Did it work?
puts "User:   " + my_user.username
puts "Bookmark:    " + my_user.bookmarks.first.title



The difference between migration and mutation:



CREATE DATABASE bookmarks

\c bookmarks

CREATE TABLE user
