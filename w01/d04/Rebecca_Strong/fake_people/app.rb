require_relative "person"

#Matt's solution

array = []
1000.times do
  person = Person.new
  array.push(person)
end

# another way
person array =[]
1_000.times {array << Person.new}

person_array.each do |person|
  puts  "Hi my name is #{person.name}"
end

person_array.each do |person|
  puts person
end

#Nessa's solution

person_array.map{|person| person.name}

#Matt's fave

arr = 1000.times.map{Person.new}
