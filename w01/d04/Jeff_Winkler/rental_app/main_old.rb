
require_relative "Apartment"
require_relative "Building"
require_relative "Person"



def menu
  puts "What would you like to create?  A (P)erson, (A)partment, or (B)uilding)?"
  puts "Type q to quit."
  create_what = gets.chomp.downcase[0]
  case create_what
  when 'p'
    make_person
  when 'a'
    make_apartment
  when 'b'
    make_building
  else
    puts "No type chosen"
  end
  return create_what
end

def make_person
  curr_person = Person.new("xx", 0, 0)
  puts "Name?"
  curr_person.name = gets.chomp
  puts "Age?"
  curr_person.age = gets.chomp.to_i
  puts "Income?"
  curr_person.income = gets.chomp.to_i
  puts curr_person
end

def make_apartment
  curr_apartment = Apartment.new("xx", 0, 0, 0, 0)
  puts "Unit?"
  curr_apartment.unit = gets.chomp
  puts "Rent?"
  curr_apartment.rent = gets.chomp.to_i
  puts "Square Feet?"
  curr_apartment.sqft = gets.chomp.to_i
  puts "Number of Bedrooms?"
  curr_apartment.bedrooms = gets.chomp.to_i
  puts "Number of Bathrooms?"
  curr_apartment.bathrooms = gets.chomp.to_i
  puts curr_apartment
end

def make_building
  # address style floors
  curr_building = Building.new("xx", "xx", 0)
  puts "Address?"
  curr_building.address = gets.chomp
  puts "Style?"
  curr_building.style = gets.chomp
  puts "Number of Floors?"
  curr_building.floors = gets.chomp.to_i
  puts curr_building
end

response = menu

while response != 'q'
  response = menu
end


