
require_relative "Person"

def create_peeps
  people = Array.new
  1000.times {people << Person.new}
  people.each {|person| puts person}
  #people.each {|x| puts "Hi, I am #{x.name}"}
  puts "hello"
  puts people[0]

end

create_peeps


