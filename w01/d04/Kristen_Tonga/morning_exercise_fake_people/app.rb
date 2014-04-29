# DOESN"T QUITE WORK YET

require_relative "person.rb"

=begin
#Array.new (brings back same name)
crowd _ Array.new(1000, Person.new)

#ARRAY
array = [
1_000.times do
  person = Person.new
  array.push(person)
end

#THE CLEANER WAY. << is the same as push.
person_array = []
1000.times {array << Person.new}

person_array.each each do |person|
  puts person
end

#ANOTHER WAY
person_array.map{|person| person.name}
=end

#MATT'S FAVORITE WAY
arr = 1000.times.map{Person.new}

person_array.each do |person|
  puts "Hi. My name is #{Person.new}."
