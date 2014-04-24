require_relative "Person"

# #A way
# array = []
# 1000.times do
#   person = Person.new
#   array.push(person)
# end

# # Array.new
# the_horde = Array.new(1000, Person.new) #creates 1000 element array of the same element
# the horde = Array.map(1000, Person.new)
# the_horde.map! {|Person| Person}

# Matt's fave for generting an array
arr = 1000.times.map{Person.new}
#Another way
person_array = []
1000.times { person_array << Person.new }

# person_array.each do |person|
#   puts "Hi my name is #{person.name}"
# end

person_array.each do |person|
  puts person
end

