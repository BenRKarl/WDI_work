require 'rspec'
require_relative '../building'
require_relative '../apartment'
require_relative '../person'

persons = []
apartments = []
buildings = []
response = ""

while response != "q"
  print "add a (p)erson, (b)uilding, (a)partment, or (q)uit: "
  response = gets.chomp[0]

  case
  when response == "p"
    print "enter your name"
    name = gets.chomp
    print "age"
    age = gets.chomp
    print "income"
    income = gets.chomp
    persons.push(Person.new(name, age, income))

  when response == "b"
    print "enter the address"
    address = gets.chomp
    print "enter the style"
    style = gets.chomp
    print "enter the floors"
    floors = gets.chomp

  when response == "a"
    print "Unit name"
    unit = gets.chomp
    print "rent"
    rent = gets.chomp
    print "sqft"
    sqft = gets.chomp
    print "bedrooms"
    bedrooms = gets.chomp
    print "bathrooms"
    bathrooms = gets.chomp

    if !persons.empty?
      print "Add a tenant"
      persons.each { |p| print p.name + " "}
      print ""
      new_tenant = gets.chomp
      new_tenant = persons[persons.index(new_tenant)] if persons.include? new_tenant

    end
  end
end
