

require_relative "./Person"
require_relative "Car"

Andre = Person.new("Andre", 1)
mattyboi = Person.new("Matthew", 1)
delorean = Car.new


puts "before entering:"
delorean.passengers.each{|passenger| puts passenger.name}

delorean.accept_passenger(mattyboi)

puts "---------------"
puts "after entering:"
delorean passengers.each{|passenger| puts passenger}
