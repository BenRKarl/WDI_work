require_relative "./Person"
require_relative "./Car"

andre = Person.new("Andre", 1)
mattyboi = Person.new("Matthew", 1)
delorean = Car.new

puts "before enterting:"
puts delorean.passengers.each{ |passenger| puts passenger.name }

delorean.accept_passenger(mattyboi)

puts "______________"
puts "After entering:"
puts delorean.passengers.each{ |passenger| puts passenger.name }
