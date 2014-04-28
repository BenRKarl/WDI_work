require 'Rainbow'
require_relative 'animal'
require_relative 'shelter'
require_relative 'client'

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
    if shelter.animal_count == 0
      puts "Sorry, we don't have any animals at the moment."
    else
     # Display Animals
     puts " "
     shelter.display_animals
     puts @pet.to_s
   end
  when "B"
    if shelter.client_count == 0
      puts "Sorry, we don't have any clients at the moment."
    else
     # Display Clients
     puts " "
     shelter.display_clients
     puts @client.to_s
   end
  when "C"
    puts "What is your pet's name?"
    pet_name = gets.chomp
    puts "What kind of an animal is #{pet_name}?"
    pet_species = gets.chomp
    puts "How old is #{pet_name}?"
    pet_age = gets.chomp
     # Create Animal
    @pet = Animal.new(pet_name, pet_age, pet_species)
    shelter.accept_animal(pet_name, pet_species)
  when "D"
    puts "What is your name?"
    user_name = gets.chomp
    puts "How old are you?"
    user_age = gets.chomp
    puts "Do you have any pets? Yes or no."
    user_pets = gets.chomp.downcase[0]
    @client = Client.new(user_name, user_age)
    if user_pets == "n"
      puts " "
      puts "Let's find you one!"
    else
    puts "What is your animals name?"
    pet_name = gets.chomp
    puts "What kind of an animal is #{pet_name}?"
    pet_species = gets.chomp
    puts "How old is #{pet_name}?"
    pet_age = gets.chomp
    @client.accept_pet(pet_name, pet_species)
    puts "Thank you! Now let's find you another one."
    end
     # Create Client
      @pet = Animal.new(pet_name, pet_age, pet_species)
     shelter.accept_client(user_name, user_age)
  when "E"
    puts "Let's find you the perfect pet!"
    puts " "
    shelter.display_animals
    puts " "
    if shelter.animal_count == 0
      puts "Sorry, we don't have any pets for adoption at the moment."
      menu(shelter)
    else
      puts "Which of the above would you like to take home?"
      pet_name = gets.chomp
      shelter.give_away_animal(pet_name)
     # Adopt Animal
      @client.accept_pet(pet_name, pet_species)
      puts "Good luck, you two!"
    end
  when "F"
    @client.display_pets
    if @client.pet_count == 0
      puts "You don't have any animals to put up for adoption. Why not adopt one?"
    else
      puts "Which of your pets would you like to give up?"
      pet_name = gets.chomp
      @client.give_away_pet(pet_name)
      # Put Animal Up For Adoption
      shelter.accept_animal(pet_name, pet_species)
      puts "Thank you. We'll find #{pet_name} a good home."
    end
  when "Q"
    Kernel.exit
  end
end




shelter = Shelter.new("HappiTails", "10 E. 21st St.")

response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end
