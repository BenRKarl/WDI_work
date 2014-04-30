require_relative 'Client.rb'
require_relative 'Animal.rb'
require_relative 'Shelter.rb'

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
    happitails.display_animals
  when "B"
    happitails.display_clients
    # Display Clients
  when "C"
    puts "What is the name of the animal?"
    name = gets.chomp
    puts "What is the age of the animal?"
    age = gets.chomp.to_i
    puts "What is the species of the animal?"
    species = gets.chomp
    happitails.accept_animal("#{name}",Animal.new("#{name}","#{age}","#{species}"))

    # Create Animal
  when "D"
    puts "What is the name of the client?"
    name = gets.chomp
    puts "What is the age of the client?"
    age = gets.chomp.to_i
    happitails.accept_client("#{name}",Client.new("#{name}","#{age}"))
    # Create Client
  when "E"

    # Adopt Animal
  when "F"
    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end
shelter = Shelter.new('Happitails', '21st st')

response = menu
while response != "Q"
  response = menu
end
