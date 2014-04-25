require_relative 'apartment'
require_relative 'building'
require_relative 'person'

def create
  puts "Do you want to create a (p)erson, (a)partment or (b)uilding?
  Choose 'q' to exit."
  choice = gets.chomp.downcase[0]	

  if choice == 'p'
  	puts "Please input person's name"
  	name = gets.chomp
  	puts "Please input person's age"
  	age = gets.chomp.to_i
  	puts "Please input person's income"
  	income = gets.chomp.to_i
    person = Person.new(name, age, income)
    puts "Person's rofile: " + person.to_s	

  elsif choice == 'a'
  	puts "Please input unit's number"
  	unit = gets.chomp
	puts "Please input unit's rent"
	rent = gets.chomp.to_i
	puts "Please input unit's square footage"
	sqft = gets.chomp.to_i
	puts "Please input number of bedroom(s)"
	bedrooms = gets.chomp.to_i
	puts "Please input number of bathroom(s)"
	bathrooms = gets.chomp.to_i
	apartment = Apartment.new(unit, rent, sqft, bedrooms, bathrooms)
	puts "Apartment's profile: " + apartment.to_s

  elsif choice == 'b'
	puts "Please input building's address"
  	address = gets.chomp  
  	puts "Please input building's style"
  	style = gets.chomp
  	puts "Please input building's number of floors"
  	floors = gets.chomp
	puts "Please input building's apartment count"
  	apartment_count = gets.chomp
  	building = Building.new(address, style, floors, apartment_count)
  	puts "Building's profile: " + building.to_s
  else
    puts "Quitting."	
  end
end

create()  	
    	  