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
     shelter.display_animals

  when "B"
     shelter.display_clients

  when "C"
   puts "What's the animal's name?"
   animal_name = gets.chomp
   puts "What's the animal's age?"
   animal_age = gets.chomp.to_i
   puts "What's the animal's species?"
   animal_species = gets.chomp
   new_animal = Animal.new(animal_name, animal_age, animal_species)
   shelter.accept_animal(animal_name, new_animal)
   puts "Your animal was created! #{animal_name} the #{animal_species} is #{animal_age} years old.\n"

  when "D"
    # Create Client
   puts "Please enter your name."
   client_name = gets.chomp
   puts "Please enter your age."
   client_age = gets.chomp.to_i
   new_client = Client.new(client_name, client_age)
   shelter.accept_client(client_name, new_client)
   puts "#{client_name} is #{client_age} years old and is now a client of #{shelter.name} at #{shelter.address}."

  when "E"
    # Adopt Animal
    puts "Which animal would you like to adopt?"
    shelter.display_animals
    adoption_choice = gets.chomp
    @animals[adoption].give_away_animal
  when "F"
    # Put Animal Up For Adoption
    puts "What's your name?"
    client_to_give_up_animal = gets.chomp
    if @clients[client_to_give_up_animal] == nil
      puts "You are not a registered client. Please create yourself using 'D'."
    else
      puts "What's the name of the animal you would like to put up for adoption?"
      name_of_animal = gets.chomp
      @animals[name_of_animal] = @pets[name_of_animal]
      @pets[name_of_animal].delete
      puts "#{name_of_animal} is now kept at #{shelter.name} at #{shelter.address}"
      puts "#{name_of_animal} no longer belongs to #{@clients[client_to_give_up_animal]}."
    end
  when "Q"
    Kernel.exit
  end
end

shelter = Shelter.new('happittails', '101239817')
response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end
