require "pry"

require_relative "animal.rb"
require_relative "client.rb"
require_relative "shelter.rb"


new_shelter = Shelter.new("HappiTails","10 East 21st Street")

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
    # Display Animals   
    animals = new_shelter.animals

    if animals.length == 0     
      puts "No animals in the shelter."
    else
      # animals.each { |a| puts a.to_s }
      # output:
      # ["tim", tim is a 2 year old cat that loves ]
      # ["bob", bob is a 3 year old dog that loves ]

      animals.each { |k, v| puts v }
      # output:
      # tim is a 2 year old cat that loves 
      # ben is a 3 year old dog that loves 

      # new_shelter.display_animals
      # output:
      # tim
      # ben
    end
   
  when "B"
    # Display Clients
    clients = new_shelter.clients

    if clients.length == 0
      puts "Shelter has no clients."
    else
      # clients.each { |c| puts c.to_s }
      # output:
      # ["Mr. Smith", Mr. Smith is a 45 year old with 0 pets]
      # ["Mrs. Jackson", Mrs. Jackson is a 90 year old with 0 pets]

      # clients.each { |c| puts c }
      # output:
      # Mr. Smith
      # Mr. Smith is a 45 year old with 0 pets
      # Mr. Jackson
      # Mr. Jackson is a 90 year old with 0 pets

      clients.each { |k, v| puts v }
      # output:
      # Mr. Smith is a 45 year old with 0 pets
      # Mr. Jackson is a 90 year old with 0 pets

      # new_shelter.display_clients
      # output:
      # Mr. Smith
      # Mr. Jackson
    end

  when "C"
    # Create Animal
    print "Name of Animal: "
    name = gets.chomp
    print "Age of Animal: "
    age = gets.chomp.to_i
    print "Species of Animal: "
    species = gets.chomp

    new_animal = Animal.new(name, age, species)    
    new_shelter.accept_animal(new_animal.name, new_animal)
    
  when "D"
    # Create Client
    print "Name of Client: "
    name = gets.chomp
    print "Age of Client: "
    age = gets.chomp.to_i

    new_client = Client.new(name,age)
    new_shelter.accept_client(new_client.name, new_client)

  when "E"
    # Adopt Animal
    animals = new_shelter.animals
    clients = new_shelter.clients

    if animals.length == 0 || clients.length == 0
      puts "No animals available for adoption." if animals.length == 0 
      puts "No clients who want to adopt animals." if clients.length == 0
    else

      client_name = ""
      while !clients.keys.include?(client_name)
        clients.each { |k, v| puts v }
        print "Enter the name of the client who wants to adopt an animal: "
        client_name = gets.chomp

        puts "Sorry, we dont know #{client_name}." unless clients.keys.include?(client_name)          
      end 

      animal_name = ""
      while !animals.keys.include?(animal_name)    
        animals.each { |k, v| puts v }
        print "Enter the name of the animal to adopt: "
        animal_name = gets.chomp

        puts "Sorry, we dont have an animal with the name #{animal_name}." unless animals.keys.include?(animal_name)          
      end
       
      clients[client_name].accept_pet(animal_name, animals[animal_name])
      new_shelter.give_away_animal(animal_name)
      puts clients[client_name]
    end

  when "F"
    # Put Animal Up For Adoption  
    clients = new_shelter.clients

    if clients.length == 0      
      puts "No clients available."
    else
      client_name = ""
      while !clients.keys.include?(client_name)
        clients.each { |k, v| puts v }        
        print "Enter the name of the client who wants to put an animal up for adoption: "
        client_name = gets.chomp

        puts "Sorry, we dont know #{client_name}." unless clients.keys.include?(client_name)        
      end
  
      new_client = new_shelter.clients[client_name]
      pets = new_client.pets

      if pets.length == 0
          puts "#{client_name} has no pets to put up for adoption." 
      else
        pet_name = ""
        while !pets.keys.include?(pet_name)
          pets.each { |k, v| puts v }            
            print "Enter the name of the pet to put up for adoption: "
            pet_name = gets.chomp
            puts "Sorry, no pet called #{pet_name}." unless pets.keys.include?(pet_name)            
        end
        
        new_shelter.accept_animal(pet_name, pets[pet_name])
        new_client.give_away_pet(pet_name)
        puts clients[client_name]  

      end    
   end
    
  when "Q"
   Kernel.exit
  end

end

response = menu(new_shelter)
while response != "Q"
  response = menu(new_shelter)
end

