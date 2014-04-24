require_relative "Person"

people = []
1000.times { people << Person.new}
people.each { |person| puts "Hi, I am #{person.name}"}
