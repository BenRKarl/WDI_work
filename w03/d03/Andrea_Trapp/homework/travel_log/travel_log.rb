require 'pg'
require 'active_record'

# connect to database
database_name = "travel_log_db"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

# define models
class Place < ActiveRecord::Base
  has_many :trips
end

class Trip < ActiveRecord::Base
  has_many :records
  belongs_to :place
end

class Record < ActiveRecord::Base
  belongs_to :trip
end

# testing
my_place = Place.create({name: 'Boston', countrycode: 'US'})
my_trip = Trip.create({title: 'Weekend City-Tour', year: 2013})
my_record = Record.create({title: 'Aquarium visit and Quincy Market', description: 'An interesting visit in the Boston Aquarium with small and big fishes. Afterwards shopping tour around Quincy Market and then lunch at Ricardos Restaurant with awesome italian cuisine.', entry_date: '08/05/2012'})

my_place.trips << my_trip
my_trip.records << my_record

# result
puts "Place:  " + my_place.name
puts "Trip:   " + my_place.trips.first.title
puts "Record: " + my_trip.records.first.title
