require_relative "Person"
# Array.new
crowd = Array.new(1000, Person.new)

crowd.map!{|person| Person.new}

#another way
person_array = []
1000.times {person_array << Person.new}

person_array.each do |person| #send message of each to person_array and pass code
  puts "Hi my name is #{person.name}"
end

person_array.each do |person| #send message of each to person_array and pass code
  puts person     #puts
end

#Matts Fave
arr = 1000.times.map{Person.new}
