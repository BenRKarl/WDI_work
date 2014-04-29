require_relative './animal.rb'
require_relative './client.rb'
require_relative './shelter.rb'

def menu(shelter)
  puts "Welcome to the Happitails Animal Shelter!"
  print "Please choose an option from the menu below:  "
  puts ""
  puts "A: Display Animals in Shelter"
  puts "B: Display Clients"
  puts "C: Register an Animal"
  puts "D: Register a Client"
  puts "E: Adopt an Animal"
  puts "F: Put an Animal up for Adoption"
  puts "Q: Quit"
  puts " "
  puts " "
  print "Input>> "
  command = gets.chomp.upcase

  case command
    when "A"
      # display all animals in shelter
      $shelter.display_animals.each { |animal| puts animal }

    when "B"
      # display all clients in shelter
      $shelter.display_clients.each { |client| puts client}

    when "C"
      # create animal object in shelter
      print "Registering animal's name:  "
      animal_name = gets.chomp.capitalize
      print "#{animal_name}'s age:  "
      age = gets.chomp.to_i
      print "#{animal_name}'s species:  "
      species = gets.chomp.downcase
      print "#{animal_name}'s favorite toys:  "
      toys = gets.chomp

      new_animal = Animal.new(animal_name, age, species)
      new_animal.toys = toys.split(", ")
      $shelter.accept_animal(animal_name, new_animal)

    when "D"
      # create client object in shelter
      print "Registering client's name:  "
      client_name = gets.chomp.capitalize
      print "#{client_name}'s age:  "
      client_age = gets.chomp.to_i
      print "How many pets does #{client_name} have?  "
      client_pets = gets.chomp.to_i

      $shelter.accept_client(client_name, Client.new(client_name, client_age))

    when "E"
      # client.accept_pet(name,pet) and shelter.give_away(name,pet)
      puts "What is the name of the animal you are adopting?"
      pet_name = gets.chomp
      puts "Which client will be adopting #{pet_name}"
      client_name = gets.chomp.capitalize
      $shelter.clients[client_name].accept_pet(pet_name, $shelter.give_away_animal(pet_name))


    when "F"
      # client.give_away_animal(name) and shelter.accepter_animal.(name, animal)
      puts "What is the name of the animal you are giving up for adoption?"
      pet_name = gets.chomp.capitalize
      puts "Who is giving up #{pet_name}?"
      client_name = gets.chomp.capitalize
      $shelter.animals[animal_name] = $shelter.lients[client_name].give_away_pet(animal_name)

    when "Q"
      exit()
  end
end


$shelter = Shelter.new('HappiTails', '10 East 21st Street')

# $shelter.clients["Nate"] = Client.new("Nate", 29, 0)
# $shelter.clients["Joy"] = Client.new("Joy", 29, 0)
# $shelter.clients["Mark"] = Client.new("Mark", 28, 0)
# $shelter.clients["Sam"] = Client.new("Sam", 28, 0)







response = menu($shelter)
while response != "Q"
  repsonse = menu($shelter)
end
