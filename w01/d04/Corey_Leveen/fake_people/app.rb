require_relative "Person"

array_of_people = []
count = 0

while count <= 1000
  array_of_people.push(Person.new.name)
  count += 1
end

array_of_people.each { |x| puts x }
