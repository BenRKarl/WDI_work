require_relative "client"
require_relative "shelter"
require_relative "animal"

my_shelter = Shelter.new("Wake Shelter", "41 Wake st")
response = ""
valid_response = false

# Method that accepts a hash, generates and putses a list based on the hash 
#(A - hashvalue1, B - hashvalue2...)
#lets the user pick one from the list, makes sure that it is a vaild choice, 
#and returns the chosen value.
def options_menu(input_hash)
  valid_response = false

  while !valid_response
    option_letter = "A"
    options_hash = Hash.new

    input_hash.each { |key, value|
      options_hash[option_letter] = value
      option_letter.next!
    }

    options_hash.each { |letter, value| print "#{letter} - #{value}\n" }
    option_result = gets.chomp.upcase
    if options_hash.keys.include?(option_result)
      valid_response = true
      return options_hash[option_result]
    else
      puts "Invalid response."
    end
  end
end

while !valid_response
  puts
  puts "A - add an animal"
  puts "B - add a client"
  puts "C - give animal to client" if my_shelter.client_count > 0 && my_shelter.animal_count > 0
  puts "D - accept animal from client" if my_shelter.client_count > 0
  puts "E - remove an animal" if my_shelter.animal_count > 0
  puts "F - display clients" if my_shelter.client_count > 0
  puts "G - display animals" if my_shelter.animal_count > 0
  puts "H - assign favorite toy to animal" if my_shelter.animal_count > 0
  puts "Q - quit"
  print ": "

  response = gets.chomp.downcase

  case response
  when "a"
    puts
    puts "Adding Animal:"
    print "Name: "
    animal_name = gets.chomp
    print "Age: "
    animal_age = gets.chomp
    print "Species: "
    animal_species = gets.chomp

    my_shelter.accept_animal(animal_name, Animal.new(animal_name, animal_age, animal_species))

  when "b"
    puts
    puts "Addiing a client:"
    print "Client name: "
    client_name = gets.chomp
    print "Client age: "
    client_age = gets.chomp

    my_shelter.accept_client(client_name, Client.new(client_name, client_age))

  when "c"
    puts
    puts "Giving an animal to a client:"
    puts "Chose animal:"
    chosen_animal = options_menu(my_shelter.animals)
    puts "Chose client:"
    chosen_client = options_menu(my_shelter.clients)

    my_shelter.give_away_animal(chosen_animal)
    my_shelter.clients[chosen_client.name].accept_pet(chosen_animal.name, chosen_animal)

  when "d"
    puts
    puts "Accept animal from client: "
    puts "Chose client:"
    chosen_client = options_menu(my_shelter.clients)
    puts "Chose animal:"
    chosen_animal = options_menu(chosen_client.pets)

    my_shelter.accept_animal(chosen_animal.name, chosen_animal)
    chosen_client.give_away_pet(chosen_animal.name)

  when "e"
    puts
    puts "Removing an animal: "
    chosen_animal = options_menu(my_shelter.animals)
    my_shelter.give_away_animal(chosen_animal.name)

  when "f"
    puts
    puts "displaying clients"
    my_shelter.display_clients

  when "g"
    puts
    puts "displaying animals"
    my_shelter.display_animals

  when "h"
    puts
    puts "Assigning a favorite toy to an animal: "
    puts "Choose animal: "
    chosen_animal = options_menu(my_shelter.animals)
    print "Enter a toy: "
    toy = gets.chomp
    chosen_animal.accept_toy(toy)


  when "q"
    break

  end
end

