require_relative "person"

# arr = 1000.times.map{Person.new}

#A way
array = []
1_000.times do
  person = Person.new
  array.push(person)
end

# #Another way
person_array = []
1_000.times { person_array << Person.new }

# # person_array.each do |person|
# #   puts "Hi my name is #{person.name}"
# # end

person_array.each do |person|
puts person
end

# # #Array.new
# # names = Array.new(1000)
# # names.map { |person| Person.new }
