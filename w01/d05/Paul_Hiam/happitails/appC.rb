require_relative "shelter"
require_relative "client"
require_relative "animal"
require 'pry'


def menu
  shelter = Shelter.new("Bongo's", "101 cave hill")
  shelter.accept_animal("Bongo", "goat")
  puts ""
  puts "Welcome to Bongo's Animal Shelter!"
  puts "Please choose from the menu below: "
  puts ""
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Add Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
    # Display Animals
    shelter.display_animals
  when "B"
    # Display Clients
    shelter.display_clients
  when "C"
    # Add Animal
    puts "what type of animal?"
    species = gets.chomp.to_s
    puts "how old is this #{species}?"
    animal_age = gets.chomp
    puts "what is this #{species} called?"
    animal_name = gets.chomp.to_s
    
    animal = Animal.new(animal_name, animal_age, species)
    puts "how many toys does #{animal_name} have?"
      #deal w toys
    toycount = gets.chomp.to_i
      toycount.times do 
        puts "what is the #{species}'s #{species} toy?"
        toy = gets.chomp
        animal.toys << toy
      end

    puts animal
    shelter.accept_animal("#{animal_name}", "#{species}")
    puts "#{animal_name} is in the shelter, go find that #{species} a home!"

  when "D"
    # Create Client
    puts "what is the name of new client?"
    clientname = gets.chomp.to_s
    puts "how old is #{clientname}"
    clientage = gets.chomp.to_s
    client = Client.new(clientname, clientage)
    puts = "how many pets does #{clientname} have?"
    petscount = gets.chomp.to_i
      petscount.times do
        puts "what is client's pet named?"
        petname = gets.chomp.to_s
        puts "what type of animal is #{petname}?"
        pet = gets.chomp.to_s
        client.accept_pet(petname, pet)
        puts client
      end
    puts client
    puts client.display_pets if petscount > 0 
  when "E"
    # Adopt Animal
  when "F"
    # Put Animal Up For Adoption

  when "Q"
    Kernel.exit
  end
end



response = menu
while response != "Q"
  response = menu
end

binding.pry
