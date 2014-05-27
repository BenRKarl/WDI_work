require "pg"
require "active_record"

database_name = "train_app"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

class Train < ActiveRecord::Base
  has_many :passengers
end

class Passenger < ActiveRecord::Base
  belongs_to :train
end

the_l = Train.create({route: ["8th", "6th", "Union Square", "3rd", "1st"], seats: 4})
the_6 = Train.create({route: ["Grand Central", "33rd", "28th", "23rd", "Union Square"], seats: 8})
the_n = Train.create({route: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"], seats: 4})

carlos = Passenger.create({start: "8th", destination: "Times Square"})
michael = Passenger.create({start: "Grand Central", destination: ""})

the_l.passengers << carlos
the_6.passengers << michael

puts "The L has #{ the_l.seats } seats."
puts "Carlos is heading to #{ carlos.destination }"