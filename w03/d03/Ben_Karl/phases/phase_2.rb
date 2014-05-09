require "pg"
require "active_record"

database_name = "bus_app"
ActiveRecord::Base.establish_connection("postgres://localhost/#{database_name}")

class Bus < ActiveRecord::Base
  has_many :passengers
end

class Passenger < ActiveRecord::Base
  belongs_to :bus
end

the_l = Bus.create({route: ["8th", "6th", "Union Square", "3rd", "1st"], seats: 4})
the_6 = Bus.create({route: ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"], seats: 8})
the_n = Bus.create({route: ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"], seats: 4})

reggie = Passenger.create({start: "8th", destination: "Times Square"})
james = Passenger.create({start: "Grand Central", destination: ""})

the_l.passengers << reggie
the_6.passengers << james

puts "The L has #{ the_l.seats } seats."
puts "Reggie is heading to #{ reggie.destination }"

