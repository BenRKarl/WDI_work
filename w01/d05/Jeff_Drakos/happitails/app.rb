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
    # Display Animals
   puts shelter.display_animals
  when "B"
    # Display Clients
   puts shelter.display_clients
  when "C"

    # Create Animal
    client.accept_pet
  when "D"
    shelter.accept_client
    # Create Client
  when "E"
    # Adopt Animal
    client.accept_pet
  when "F"
    # Put Animal Up For Adoption
    client.give_away_pet
  when "Q"
    Kernel.exit
  end
end

def accept_pet
  puts "Animals name?"
  animal_name = gets.chomp
  puts "animals age?"
  animals_age = gets.chomp.to_i
  puts "species?"
  animals_species = gets.chomp

end

def create_animal
puts "Create Animal"
print "What is the animals name?"
name = gets.chomp
print "How old is #{name}?"
age = gets.chomp
print "What kind of species"
species = gets.chomp
animal = name
animal = Animal.new(name, age, species)
animal.toys << get_toys(name)
@shelter.accept_animal(animal.name, animal)
puts "We have added #{name}" + "#{animal}"

  end

  def create_client
    puts "Create Client"
    puts "Whats the client's name?"
    name = gets.chomp
    puts "How old is #{name}"
    age = gets.chomp
    client_name = name + "_client"
    client_name = Client.new(name, age)
    @shelter.accept_client(client_name.name, client_name)
    puts "#{name} has been added"
  end

def adopt_animal
puts "Who wants to adopt an animal?"
@shelter.display_clients
print "\n> "
adopt = gets_chomp
puts "client: " + @shelter.clients[adopt].name
puts "what animal would you like to adopt?"
@shelter.display_animals
print "\n >"
adopted_pet = gets.chomp
@shelter.clients[adopt].accept_pet(@shelter.animals[adopted_pet].name, @shelter.animals[adopt])
@shelter.give_away_pet(@shelter[adopted_pet].name)
puts "#{name} had adopted #{adopted_pet}"
end

def  accept_animal
  puts "Who is adopting a pet?"
  @shelter.display_clients
  client = gets.chomp
  puts "which pet would #{@shelter.clients[clients].name} like to give up?"
  @shelter.clients[client].display_pets
  pet = gets.chomp
  @shelter.accept_animal(@shelter.clients[client].pets[pet].name, @shelter.clients[client].pets[pet])
  @shelter.clients[client].give_away_pet(@shelter.clients[client_name].pets[pet].name)
  puts "#{client} donated #{pet}"
end


shelter = Shelter.new('happitails', '10 est')

response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end


