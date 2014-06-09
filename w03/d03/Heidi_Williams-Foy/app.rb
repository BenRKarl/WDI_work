require 'pg'
require 'active_record'

# Connect to database
database_name = "ps34_students"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")


# Define your models
class Students < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :caws
end


# Test out the association methods!!
my_user = User.create({username: 'Lichard'})
my_caw = Caw.create({message: 'Working on The Great WDisby'})
my_user.caws << my_caw

# Did it work?
puts "User:   " + my_user.username
puts "Student:    " + my_user.caws.first.message