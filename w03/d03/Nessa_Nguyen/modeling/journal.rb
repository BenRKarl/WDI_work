require 'pg'
require 'active_record'

database_name = "travel_log"
ActiveRecord::Base.establish_connection(
{ :adapter  => "postgresql",
	:database => "travel_log"
})


# Define your models
class Journal < ActiveRecord::Base
  belongs_to :user
end

class Place < ActiveRecord::Base
  has_many :journals
end


my_place   = Place.create({place: 'Montana'})
my_journal = Journal.create({entry: 'Fields and stuff'})
my_place.journals << my_journal

puts "Place:   " + my_place.place
puts "Journal: " + my_place.journals.first.entry
