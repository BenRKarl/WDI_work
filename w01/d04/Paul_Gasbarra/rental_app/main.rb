require_relative 'building'
require_relative 'apartment'
require_relative 'person'

def intro
puts "Welcome to Landlord Buddy!"
end

#buildings = Array.new
#apartment_list = Array.new
#tenants = Array.new

def menu
puts"Select an option from below
    1. Create a building
    2. Create an apartment
    3. Create a tenant
    (q)uit"
    #4. List buildings
    #5. List apartments
    #6. List tenants


    choice = gets.chomp

    case choice
    when "q"
      return "Bye!"
    when "1"
      create_building
      menu
    when "2"
      create_apartment
      menu
    when "3"
      create_tenant
      menu
    #when "4"
     # buildings.each {|x| puts x }
     # menu
    #when "5"
      apartment_list.each{|x| puts x }
    #  menu
    #when "6"
     # tenants.each{|x| puts x }
      #menu
    else
      menu
    end

end

def create_building
  puts "What is the building address?"
  address = gets.chomp
  puts "What is the building style?"
  style = gets.chomp
  puts "How many floors does the building have?"
  floors = gets.chomp
  building_name = address.tr(" ", "_")
  building_name = Building.new(address, style, floors)
  #buildings.push(building_name)
  puts building_name.to_s
end

def create_apartment
  puts "Unit?"
  unit = gets.chomp
  puts "Rent?"
  rent = gets.chomp
  puts "Square feet?"
  sqft = gets.chomp
  puts "Bedrooms?"
  bedrooms = gets.chomp
  puts "Bathrooms?"
  bathrooms = gets.chomp
  apartment_name = unit.tr(" ", "_")
  apartment_name = Apartment.new(unit, rent, sqft, bedrooms, bathrooms)
  #apartments.push()
  puts apartment_name.to_s
end

def create_tenant
  puts "What is tenant's name?"
  name = gets.chomp
  puts "What is tenant's age?"
  age = gets.chomp
  puts "What is tenant's income?"
  income = gets.chomp
  tenant_name = name.tr(" ", "_")
  tenant_name = Person.new(name, age, income)
  #tenants.push()
  puts tenant_name.to_s
end


intro
menu
