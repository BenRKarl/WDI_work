require_relative 'apartment'
require_relative 'building'
require_relative 'person'

out = ""
buildings = []
apartments = []
persons = []

while out != "q"
  puts "What do you want to create? (building, apartment, person)"
  response = gets.chomp

    if response == "building"
      puts "Provide an address:"
      address = gets.chomp
      puts "Provide a style:"
      style = gets.chomp
      puts "Provide the number of floors:"
      floors = gets.chomp
      buildings << Building.new(address, style, floors)
    elsif response == "apartment"
      puts "Provide a unit number:"
      unit = gets.chomp
      puts "Provide rent amount:"
      rent = gets.chomp
      puts "Provide the number of square feet for the apartment:"
      sqft = gets.chomp
      puts "How many bedrooms does the apartment have?"
      bedrooms = gets.chomp
      puts "How many bathrooms does the apartment have?"
      bathrooms = gets.chomp
      apartments << Apartment.new(unit, rent, sqft, bedrooms, bathrooms)
    elsif response == "person"
      puts "What's the name of the person?"
      name = gets.chomp
      puts "What's the age of the person?"
      age = gets.chomp
      puts "What's the income of the person?"
      income = gets.chomp
      persons << Person.new(name, age, income)
    end


  puts "Press 'q' to quit, or type build to create a new building, apartment, or person."
  out = gets.chomp
end


