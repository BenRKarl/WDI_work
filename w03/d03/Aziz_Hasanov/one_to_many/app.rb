require 'pg'
require 'active_record'

# Connect to database
# database_name = "swimming_pool"
ActiveRecord::Base.establish_connection("postgres://localhost/swimming_pool")


# Define your models
class Pool < ActiveRecord::Base
  has_many :swimmers # has_many is syntax of ActiveRecord; reffers to swimmers table
end

class Swimmer < ActiveRecord::Base
  belongs_to :pool # belongs_to is syntax of ActiveRecord; reffers to pools table
end


# Test out the association methods!!
new_pool = Pool.create({kind: 'Olympic'})
new_swimmer = Swimmer.create({swimmer_name: 'Michael Helps'})
new_pool.swimmers << new_swimmer

# Did it work?
puts "This is #{new_pool.kind} pool"
# puts "Swimmers name is #{new_pool.swimmers.first.swimmers_name}"
# another way
puts "Swimmer's name is #{new_pool.swimmers[0].swimmer_name}"