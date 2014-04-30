require_relative "Person"


array = []
1000.times do
person = Person.new
array.push(person)
end

array.each do |person|
  puts person.to_s
end
