require 'pg'
require 'active_record'

database_name = "farming"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

class Farms < ActiveRecord::Base
  belongs_to :farmer
end

class Farmer < ActiveRecord::Base
  has_many :farms
end

a_farmer = Farmer.create({name: 'Olmcdonald'})
a_farm = Farm.create({name: 'The Cow Pasture'})
a_farmer.farms << a_farm

puts "Farmer:   " + a_farmer.name
puts "Farm:    " + a_farmer.farms
