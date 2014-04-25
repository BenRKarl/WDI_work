
require_relative 'animal.rb'
require_relative 'client.rb'
require_relative 'shelter.rb'
require_relative 'seed.rb'

def menu
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
  puts "G: Display All"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase

  case command
  when "A"
    puts $shelter.display_animals
  when "B"
    puts $shelter.display_clients
  when "C"
    create_animal
  when "D"
    create_client
  when "E"
    adopt_animal
  when "F"
    put_for_adopt
  when "G"
    $shelter.clients.each do |name, client|
      puts client
      puts client.display_pets
      puts ""
    end
  when "Q"
    Kernel.exit
  end
end

def create_animal
  puts "Please enter the animal's name: "
  animal_name = gets.chomp.capitalize
  puts "Please enter the animal's age: "
  age = gets.chomp.to_i
  puts "Please enter animal's species: "
  species = gets.chomp
  puts "Please enter the animal's favorite toys: "
  toys = gets.chomp.split

  new_animal = Animal.new(animal_name, age, species)
  new_animal.toys = toys
  $shelter.accept_animal(animal_name, new_animal)
end

def create_client
  puts "Please enter the client's name: "
  client_name = gets.chomp.capitalize
  puts "Please enter the client's age: "
  age = gets.chomp.to_i
  puts "How many kids does the client have?"
  num_kids = gets.chomp.to_i

  $shelter.accept_client(client_name, Client.new(name, age, num_kids))
end

def adopt_animal
  puts $shelter.display_animals
  puts ""
  puts "Which animal would you like to adopt?"
  animal_name = gets.chomp
  puts "Please find your client_name in the list below, then duly enter it: "
  puts ""
  puts $shelter.display_clients
  puts ""
  client_name = gets.chomp.capitalize
  $shelter.clients[client_name].accept_pet( animal_name, $shelter.give_away_animal(animal_name) )
  puts "Thanks for adopting #{animal_name}, #{client_name}!"
end

def put_for_adopt
  puts "Please find your name in the list below, then duly enter it: "
  puts ""
  puts $shelter.display_clients
  puts ""
  client_name = gets.chomp.capitalize
  puts ""
  puts $shelter.clients[client_name].display_pets
  puts ""
  puts "Which animal would you like to put up for adoption?"
  animal_name = gets.chomp
  puts ""
  $shelter.animals[animal_name] = $shelter.clients[client_name].give_away_pet(animal_name)
  puts "Thanks for putting #{animal_name} up for adoption, #{client_name}!"
end

response = menu
while response != "Q"
  response = menu
end
