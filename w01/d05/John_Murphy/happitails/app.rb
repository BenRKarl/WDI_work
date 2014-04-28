require_relative 'shelter'
require_relative 'client'
require_relative 'animal'
require 'pry'


animals_i_w = []
happitails_i = Shelter.new("HappiTails", "123 Imaginary St")
response = ""
selection = ["A", "B", "C", "D", "E"]

def menu(animals_w, happitails)
  puts ""
  puts "Welcome to HappiTails Animal Shelter!"
  puts "Please choose from the menu below: "
  puts ""
  puts "ADMINISTRATION"
  puts "A: Display Animals in the Wild"
  puts "B: Create Animal in the Wild (we found another one!)"
  puts "C: Display HappiTails Clients (those that have been created)"
  puts "D: Create Client"
  puts "E: Register new Animal that has been taken into the shelter from the wild."
  puts "F: Display pets that have been given to Clients."
  puts "--------------------------------------"
  puts "CLIENTS"
  puts "G: Display Animals in the Shelter"
  puts "H: Adopt Animal"
  puts "I: Put Animal Up For Adoption (ie. Give away a pet)"
  puts "--------------------------------------"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase


  case command
  when "A"
    # Display Animals in the wild
    if animals_w.any?
      puts "Here are the animals that are in the wild:"
      animals_w.each {|i| puts "#{i.name}....... who is a #{i.species}"}
    else
      puts "There aren't any animals in the wild... why don't you find (ie. create) some!"
    end
  when "B"
    # Create an animal in the wild
      puts "What's the animal's name?"
    a_1 = gets.chomp
    puts "What's the animal's age?"
    a_2 = gets.chomp
    puts "What's the animal's species?"
    a_3 = gets.chomp
    puts "What are the animal's favorite toys?"
    a_4 = gets.chomp
    animals_w<<Animal.new(a_1, a_2, a_3)
    animals_w[-1].toys = [a_4]
    puts "We just created #{animals_w[-1].name} in the wild!"

  when "C"
    # Display all Happitails clients
    if happitails.clients.any?
      puts "Here are all of the HappiTails clients that have been created:"
      happitails.display_clients
    else
      puts "There are no HappiTails clients! You have to create one first."
    end

  when "D"
    # Create Client
    puts "What is the name of the client?"
    c_1 = gets.chomp
    puts "What is the age of the client?"
    c_2 = gets.chomp
    happitails.accept_client(c_1,Client.new(c_1, c_2))
  when "E"
    # Register and take in a new animal from the wild
    puts "What is the name of the animal in the wild that is being registered?"
    r_1 = gets.chomp
    holder = 0
    new_animal = []
    # Determining if the animal the person was referring to was in the wild... if so holder > 0
    animals_w.each {|i| holder = holder + 1 if i.name == r_1}
    # If the animal is in the wild, we want to add it to the animal shelter, and delete it from the wild.
    if holder > 0
      new_animal = animals_w.select { |i| i.name == r_1}[0]
      happitails.accept_animal(r_1, new_animal)
      animals_w = animals_w.delete(new_animal)
      puts "#{r_1} has been registered and taken into the HappiTails shelter."
    else
      puts "That animal isn't in the wild. Either create him or retype the name."
      holder = 0
    end
  when "F"
    # Display all pets that have been given to clients
    holder = 0
    happitails.clients.each {|k,v| holder += 1 if v.pets.any?}
    if holder > 0
      puts "These are the names of the pets the shelter's clients have in their possession:"
      happitails.clients.each {|name, client| client.pets.each{|pet_name, pet| puts pet_name} }

    else
      puts "None of the shelter's clients have any pets."

    end
  when "G"

    if happitails.animals.any?
    puts "These are the animals currently in the shelter:"
    happitails.display_animals
    else
      puts "There aren't any animals in the shelter! Either the shelter will have to accept one from a client, or will have to register one that has been taken in from the wild."
    end

    # Display animals registered in the Shelter
  when "H"
    # A client adopts an animal
    if happitails.animals.any?

      puts "What is the name of the client?"

      adopter = gets.chomp
      puts "What is the name of the animal the client is adopting?"
      adopted = gets.chomp
      holder = 0
      happitails.clients.each {|k,v| holder += 1 if k == adopter}
      holder_1 = 0
      happitails.animals.each {|k,v| holder_1 += 1 if k == adopted}
      if holder > 0 && holder_1 > 0
          happitails.clients[adopter].accept_pet(adopted, happitails.animals[adopted])
          happitails.give_away_animal(adopted)
          puts "#{adopter} adopted #{adopted}."
      elsif holder > 0
        puts "That animal does not exist. Either retype the name or create the animal."
      elsif holder_1 > 0
        puts "That client does not exist. Either retype the name or create the client."
      else
        puts "Neither the client or animal exist."
      end
    else
      puts "There are no animals to adopt! Either the shelter will have to accept one from a client, or will have to register one that has been taken in from the wild."
    end
  when "I"
    # A client puts an animal up for adoption
    puts "What is the name of the client?"
    adopter = gets.chomp
    puts "What is the name of the animal the client is giving up for adoption?"
    adopted = gets.chomp
    holder = 0
    happitails.clients.each {|k,v| holder += 1 if k == adopter}

    if holder > 0
      holder_1 = 0
      happitails.clients[adopter].pets.each {|k,v| holder_1 += 1 if k == adopted}
      if holder_1 > 0
        happitails.accept_animal(adopted, happitails.clients[adopter].pets[adopted])
        happitails.clients[adopter].give_away_pet(adopted)
        puts "#{adopter} gave up #{adopted} for adoption."
      else
        puts "#{adopter} is not currently in possession of an animal named #{adopted}."
      end
    else
      puts "That client does not exist."
    end

  when "Q"
    Kernel.exit
  end
end

response = ""
while response != "quit"
  menu(animals_i_w, happitails_i)
end
