require_relative "shelter"
require_relative "client"
require_relative "animal"
require 'pry'

quit = " "
while quit != "q" 
  def start
  $shelter = Shelter.new("Bongo's", "101 cave hill")
  $shelter.accept_animal("Bongo", "goat")
  bill = Client.new('Bill', '28')
  $shelter.accept_client("#{bill.name}", "#{bill.age}")
  def menu
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
    $shelter.display_animals
    menu
  when "B"
    # Display Clients
    $shelter.display_clients
    #puts "which client would you like to examine? or (m)enu"
    #choice = gets.chomp.to_s
    # if choice == 'm'
    #   menu
    # else 
    #   #? pull client obj out of shelter client hash and display 

    # end

    menu
  when "C"
    # Add Animal
    #$shelter.accept_animal("Tester", "goat")
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
    $shelter.accept_animal("#{animal.name}", "#{animal.species}")
    puts animal
    
    puts "#{animal_name} is in the shelter, go find that #{species} a home!"
    $shelter.display_animals
    menu

  when "D"
    # Create Client
    
    puts "what is the name of the new client?"
    clientname = gets.chomp.to_s
    puts "how old is the client?"
    clientage = gets.chomp.to_s
    puts "how many pets does #{clientname} have?"
    newclient = clientname.downcase.delete(' ').to_sym

     newclient = Client.new(clientname, clientage)
    # Why won't this puts display?
    #puts = "how many pets does #{clientname} have?"
      #deal w pets
    petcount = gets.chomp.to_i
    

      petcount.times do
        puts "what is #{clientname}'s pet named?"
        petname = gets.chomp.to_s
        puts "what type of animal is #{petname}?"
        pet = gets.chomp.to_s
        newclient.accept_pet(petname, pet)
        puts client
      end
      $shelter.accept_client("#{clientname}", "clientage")
    #puts client
    #puts client.display_pets if petscount > 0 
    menu
  when "E"
    # Adopt Animal
    puts "animals:"
    $shelter.display_animals
    puts "which client is adopter?"
    adopter = gets.chomp.to_s
    puts "which animal will #{adopter.name} take?"
    newpet = gets.chomp.to_s
    $shelter.give_away_animal(newpet)
    adopter_obj = adopter
    adopter.accept_pet(newpet)
    puts "#{adopter} has taken #{newpet} home!"
    menu
  when "F"
    # Put Animal Up For Adoption

  end
end

return menu
  end

   #menu
   start
     quit = "q" 
end

puts "q?"
out = gets.chomp.downcase[0]
 if out == "q"
  Kernel.exit
  elsif out == "y"
    Kernel.exit
  end
      
menu
 




binding.pry