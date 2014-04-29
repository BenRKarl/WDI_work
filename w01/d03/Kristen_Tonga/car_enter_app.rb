# this is how to connect to other files, this relates to files in the same file. The ./ is not necessary in this case.
require_relative "./Person"
require_relative "Car"

Person.new("Bilbo","111","green on yellow, or yellow on green","seed cakes")
Person.new("Kristen","23","rainbow","squa candy")
Person.new("Blue","infinite","navy","sea-water")

MG = Car.new

puts "before entering:"
MG.accept_passanger.each{|passanger| puts passanger.name}

puts "then someone enters:"
MG.accept_passanger(Blue)

puts "and now:"
MG.accept_passanger.each{|passanger| puts passanger.name}
