require_relative "animal"
require_relative "client"
require_relative "shelter"
require "pry"


def menu(new_shelter)
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
    #Display Animals

    if new_shelter.animal_count <= 0
      puts "Sorry, there are currently no animals in the shelter."
    else
      new_shelter.display_animals
    end
  
  when "B"
    #Display Clients

    if new_shelter.client_count <= 0
      puts "HappiTails currently has no clients."
    else
      new_shelter.display_clients
    end
  
  when "C"
    #Create Animal

    puts "Great. What is this animals name?"
    animal_name = gets.chomp.downcase
    
    puts "How old is #{animal_name}?"
    animal_age = gets.chomp.downcase

    puts "What kind of animal is #{animal_name}?"
    animal_species = gets.chomp.downcase

    animal_index = (animal_name + "_animal")

    animal_index = Animal.new(animal_name, animal_age, animal_species)

    new_shelter.accept_animal(animal_name, (animal_name + "_animal"))

    puts "What is #{animal_name}\'s favorite toy?"
    toy_name = gets.chomp.downcase
    animal_index.toys << toy_name

    puts "Does #{animal_name} have any other toys? (y/n)"
    toy_query = gets.chomp.downcase

    i = 1

    while toy_query == "y" && i <= 4
      puts "Great. What is this toy's name?"
      toy_name = gets.chomp.downcase
      
      animal_index.toys << toy_name
      i += 1
      if i == 4
        puts "Five is probably enough toys for a pet, dontcha think? Let's move on"
        break
      else
        puts "Does #{animal_name} have any other toys? (y/n)"
        toy_query = gets.chomp.downcase
        if toy_query == "n"
          puts "Ok, great. I'm sure #{animal_name} will appreciate having those."
        end
      end
    end
    
    puts "Ok, let me see if I have this right: " + animal_index.to_s + ". We're happy to have #{animal_name} with us."
  
  when "D"
    #Create Client

    puts "What is the client's name?"
    client_name = gets.chomp.downcase

    puts "How old is #{client_name} because for some reason we need this information?"
    client_age = gets.chomp.downcase

    client_index = client_name + "_client"

    client_index = Client.new(client_name, client_age)

    new_shelter.accept_client(client_name, client_index)

    puts "Great, I\'ve added #{client_name} to our system."

  when "E"
    # Adopt Animal

    puts "Which of the following clients is adopting this animal?"

    if new_shelter.client_count <= 0
      puts "HappiTails currently has no clients. You may add the client if you wish."
    else
      new_shelter.display_clients
    end

    adopt_client = gets.chomp.downcase
  
    puts "Which of our animals would you like to adopt?"

    if new_shelter.animal_count <= 0
      puts "Sorry, there are currently no animals in the shelter."
    else
      new_shelter.display_animals
    end

    adopt_animal = gets.chomp.downcase
    adopt_animal_index = (adopt_animal + "_pet")

    new_shelter.give_away_animal(adopt_animal)

    (new_shelter.clients[adopt_client]).accept_pet(adopt_animal, adopt_animal_index)

    puts "Congratulations #{adopt_client}, you are now the proud owner of #{adopt_animal}. Please don't kill it."

  when "F"
    # Put Animal Up For Adoption

    puts "Which of the following clients is abandoning their pet?"

    if new_shelter.client_count <= 0
      puts "HappiTails currently has no clients."
    else
      new_shelter.display_clients
    end

    abandon_client = gets.chomp.downcase

    if (new_shelter.clients[abandon_client]).pets.empty?
      puts "#{abandon_client} doesn't currently have any pets to get rid of."
    else    
      puts "Which of #{abandon_client}\'s do they want to get rid of? Choose from the list below."
      (new_shelter.clients[abandon_client]).display_pets
    end

    abandon_animal = gets.chomp.downcase
    abandon_animal_index = (abandon_animal + "_animal")

    new_shelter.accept_animal(abandon_animal, abandon_animal_index)

    (new_shelter.clients[abandon_client]).give_away_pet(abandon_animal)

    puts "Ok, #{abandon_client}, you\'ve successfully off-loaded your unloved pet, #{abandon_animal}, onto us. \n\n Should have thought it through before you decided to buy it in the first place, huh? I hope it gets adopted before we have to destroy it. \n\nYou\'re kind of a bad person. \n"

  when "Q"
    Kernel.exit
  end
end

new_shelter = Shelter.new("HappiTails Animal Shelter", "41 Union Square West, New York, NY, 11101")

response = menu(new_shelter)
while response != "Q"
  response = menu(new_shelter)
end


# - In an `app.rb` file, create user prompts to facilitate
# - ...client adopting an animal. This means the client now has the animal and they should no longer be a part of the shelter.
# - ...client puts an animal up for adoption. This means the client no longer has the animal and it should be added to the shelter.


binding.pry