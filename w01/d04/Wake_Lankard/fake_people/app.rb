require_relative "Person"
# fake_people = []

# for i in (1..1000)
#   fake_people.push(Person.new)
# end

# for i in (0..fake_people.length-1)
#   puts fake_people[i].name
# end



fake_people = []
1000.times { fake_people << Person.new }

fake_people.each do |person|
  puts "Hi my name is #{person.name}."
end
