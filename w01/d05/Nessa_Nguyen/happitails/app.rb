def menu

require_relative 'animal'
require_relative 'client'
require_relative 'shelter'

shelter = Shelter.new("Happytails", "521 West End Ave")
# Create some existing animals &  clients
shelter.accept_animal("Sammy", "cat")
shelter.accept_animal("Buck", "dog")
shelter.accept_client("Melanie", 24)
shelter.accept_client("Andru", 28)

  puts `clear`
  puts "Welcome to Happytails Animal Shelter"
  puts "Please choose what you want to do:"
  puts ""
  puts "1: Display Animals"
  puts "2: Display Clients"
  puts "3: Create an Animal"
  puts "4: Create Client"
  puts "5: Put an Animal Up For Adoption"
  puts "6: Display Shelter's Info"
  puts "7: Quit"
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Pets at the shelter include:"
    shelter.display_animals
  
  when 2  
    puts "Clients at the shelter include:"
    shelter.display_clients

  when 3  
    puts "What's the name of the animal"
    animal_accept = gets.chomp.capitalize!
    puts "What's the ID of the pet"    
    new_animal = gets.chomp.downcase
    shelter.accept_animal(animal_accept, new_animal)
    puts "There are #{shelter.animal_count} animal(s) at this shelter."
    puts "Animals at the shelter include:"
    shelter.display_animals

  when 4
    puts "What's the client's name?" 
    client_name = gets.chomp.capitalize!
    puts "What's the client's ID?" 
    new_client = gets.chomp.downcase
    shelter.accept_client(client_name, new_client)
    puts "There are #{shelter.animal_count} client(s) at this shelter."
    puts "Clients at the shelter include:"
    shelter.display_clients

  when 5
    puts "Animals at this shelter include: "
    shelter.display_animals

    puts "Which animal would you like to give up for adoption?"
    animal_give = gets.chomp
    shelter.give_away_animal(animal_give)
      if shelter.animals.empty?
        puts "There's no animal at this shelter"
      else  
        puts "Animals at the shelter include: "
        shelter.display_animals
      end  

  when 6
    puts shelter.to_s
    puts "Animals at the shelter include: "
    shelter.display_animals
    puts "Clients at the shelter include:"
    shelter.display_clients


  else
    `clear`
  end #case ends

end

menu