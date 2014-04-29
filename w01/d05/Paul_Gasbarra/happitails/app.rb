require_relative "shelter.rb"
require_relative "client.rb"
require_relative "animal.rb"

@shelter = Shelter.new("HappiTails", "1 1st St")

def get_toys(name)
  toys = Array.new
  print "Add a toy for #{name}? (y/n)\n> "
  yn = gets.chomp[0].downcase
  while yn != 'n'
    print "Add toy: "
    toys << gets.chomp
    print"Any other toys? (y/n)> "
    yn = gets.chomp[0].downcase
  end
  return toys
end

def create_animal
  puts "\nCREATE ANIMAL\n"
  print "What's the animal's name?\n> "
  name = gets.chomp
  print "How old is #{name}?\n> "
  age = gets.chomp
  print "What species is #{name}?\n> "
  species = gets.chomp
  animal = name
  animal = Animal.new(name, age, species)
  animal.toys << get_toys(name)
  @shelter.accept_animal(animal.name, animal)
  puts "\nWe have added #{name}. " + "#{animal}"
end

def create_client
  puts "\nCREATE CLIENT\n"
  puts "What's the client's name?"
  print "\n> "
  name = gets.chomp
  puts "How old is #{name}?"
  print "\n> "
  age = gets.chomp
  client_name = name + "_client"
  client_name = Client.new(name, age)
  @shelter.accept_client(client_name.name, client_name)
  puts "\n#{name} has been added."

end

def adopt_animal
  puts "\nWhich client wants to adopt an animal?"
  @shelter.display_clients
  print "\n> "
  adopter = gets.chomp
  puts "\nClient: " + @shelter.clients[adopter].name
  puts "\nWhich animal would the client like to adopt?"
  @shelter.display_animals
  print "\n > "
  adoptee = gets.chomp
  @shelter.clients[adopter].accept_pet(@shelter.animals[adoptee].name, @shelter.animals[adoptee])
  @shelter.give_away_animal(@shelter.animals[adoptee].name)
  system "clear"
  front_end
  puts "\n> #{adopter} has adopted #{adoptee}."
end

def accept_animal
  puts "\nWhich client would like to put an animal up for adoption?"
  @shelter.display_clients
  print "\n> "
  client = gets.chomp
  puts "\nWhich pet would #{@shelter.clients[client].name} like to give up?"
  @shelter.clients[client].display_pets
  print "\n> "
  pet = gets.chomp
  @shelter.accept_animal(@shelter.clients[client].pets[pet].name, @shelter.clients[client].pets[pet])
  @shelter.clients[client].give_away_pet(@shelter.clients[client].pets[pet].name)
  system "clear"
  front_end
  puts "\n #{client} has donated #{pet}."
end

def menu (shelter)
  print "\n> "
  command = gets.chomp.upcase

  case command
  when "A"
    system "clear"
    front_end
    @shelter.display_animals
  when "B"
    system "clear"
    front_end
    @shelter.display_clients
  when "C"
    system "clear"
    front_end
    create_animal
  when "D"
    system "clear"
    front_end
    create_client
  when "E"
    system "clear"
    front_end
    adopt_animal
  when "F"
    system "clear"
    front_end
    accept_animal
  when "Q"
    Kernel.exit
  end
end

def front_end
  puts "Welcome to HappiTails Animal Shelter!"
  puts "Please choose from the MENU below: "
  puts "\nA: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Adopt Animal"
  puts "F: Put Animal Up For Adoption" #remove pet from client give to shelter
  puts "Q: Quit\n"
end

shelter = Shelter.new("HappiTails", "1 1st St")

front_end

response = menu(shelter)



while response != "Q"
  response = menu(shelter)
end


