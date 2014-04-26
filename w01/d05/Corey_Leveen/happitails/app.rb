require_relative 'client'
require_relative 'animal'
require_relative 'shelter'

def menu(shelter)
  puts ""
  puts "Welcome to HappiTails Animal Shelter!"
  puts "Please choose from the menu below: "
  puts ""
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
     display_animals
  when "B"
     display_clients
  when "C"
   puts "What's the animal's name?"
   animal_name = gets.chomp
   puts "What's the animal's age?"
   animal_age = gets.chomp.to_i
   puts "What's the animal's species?"
   animal_species = gets.chomp
   @animals[animal_name] = Animal.new(animal_name, animal_age, animal_species)

  when "D"
    # Create Client
   puts "Please enter your name."
   client_name = gets.chomp
   accept_client(client_name)
  when "E"
    # Adopt Animal
  when "F"
    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end

shelter = Shelter.new('happittails', '101239817')
response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end
