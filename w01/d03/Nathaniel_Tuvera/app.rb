require_relative 'Person'
require_relative 'Car'

andre = Person.new("Andre", 1, "red", "meat")
matty = Person.new("Matthew", 1, "blue", "non-meat")
delorean = Car.new

puts delorean.passengers{|passenger| puts passenger.name}
delorean.accept_passenger(matty)
delorean.passengers.each{ |passengers| puts passengers.name}
