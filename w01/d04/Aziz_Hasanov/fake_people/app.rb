require_relative "person"


array = []
1000.times do
	person = Person.new
	array.push(person)
end

# another way
person_array = []
1000.times { array << Person.new }


# another way
# people = Array.new(1000, Person.new)
# people.map!{ |person| Person.new}


# another way
arr = 1000.times.map{Person.new}


# person_array.each do |person|
# 	puts "#{person}"
# end