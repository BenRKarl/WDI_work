require_relative "Person"

array_of_people = []
count = 0

while count <= 1000
  array_of_people.push(Person.new.name)
  puts count.to_s + ". " + array_of_people[count]
  count += 1
end
