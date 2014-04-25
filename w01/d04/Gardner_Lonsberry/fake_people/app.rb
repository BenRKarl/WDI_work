relative_relative "person"

# A way
array = []
1_000.times do
  person = Person.new
  array.push(person)
end

# Another way
array = []
1_000.times { array << Person.new }

# Another way

person_array = []
1_000.times { person_array << Person.new }

person_array.each do |person|
  puts "Hi my name is #{person.name}"
end

person_array.each do |person|
  puts person
end

# person_array.map{|person| person.name}


#Matt's fave
arr = 1_000.times.map{Person.new}
