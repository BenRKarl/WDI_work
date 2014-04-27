require_relative "client"
require_relative "shelter"
require_relative "animal"

my_shelter = Shelter.new("Wake Shelter", "41 Wake st")
response = ""
valid_response = false

# Method that generates and putses a list based on Animals or Clients in a shelter
#lets the user pick one from the list, makes sure that it is a vaild choice, 
#and returns the chosen object.
def options_menu(type, shelter)
  valid_response = false
  while !valid_response
    option_letter = "A"
    options_hash = Hash.new

    #This case statement seems dumb, but I wasn't sure how else to do it
    case type
    when :animals
      shelter.animals.each { |key, value|
        options_hash[option_letter] = value
        option_letter.next!
      }
    when :clients
      shelter.clients.each { |key, value|
      options_hash[option_letter] = value
      option_letter.next!
      }
    else
      puts "#{type.to_s} is an invalid argument"
    end

    options_hash.each { |letter, value| print "#{letter}: #{value}\n" }
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
  puts "D - remove client" if my_shelter.client_count > 0
  puts "E - remove an animal" if my_shelter.animal_count > 0
  puts "F - display clients" if my_shelter.client_count > 0
  puts "G - display animals" if my_shelter.animal_count > 0
  puts "Q - quit"
  print ": "

  response = gets.chomp.downcase

  case response
  when "a"
    puts "Adding Animal"
    print "Name: "
    animal_name = gets.chomp
    print "Age: "
    animal_age = gets.chomp
    print "Species: "
    animal_species = gets.chomp

    my_shelter.accept_animal(animal_name, Animal.new(animal_name, animal_age, animal_species))


  when "b"
    puts "addining a client"
    print "Client name: "
    client_name = gets.chomp
    print "Client age: "
    client_age = gets.chomp

    my_shelter.accept_client(client_name, Client.new(client_name, client_age))

  when "c"
    chosen_animal = options_menu(:animals, my_shelter)
    chosen_client = options_menu(:clients, my_shelter)
    my_shelter.give_away_animal(chosen_animal)
    my_shelter.clients[chosen_client.name].accept_pet(chosen_animal.name, chosen_animal)




  when "q"
    break


  end
end

