
require 'pg'
require 'active_record'

# Connect to database
database_name = "photo_app_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")


# Define your models
class Client < ActiveRecord::Base
  has_many :albums
end

class Album < ActiveRecord::Base
  has_many :photos
  belongs_to :client
end

class Photo < ActiveRecord::Base 
  belongs_to :album
end


# Test out the association methods!!
my_client = Client.create({name: 'Rickard'})
my_album = Album.create({event: 'Wedding shooting'})
my_photo = Photo.create({title: 'Picture of the wedding cake'})
my_client.albums << my_album
my_album.photos << my_photo

# Did it work?
puts "Client:   " + my_client.name
puts "Album:    " + my_client.albums.first.event
puts "Photo:    " + my_album.photos.first.title  
