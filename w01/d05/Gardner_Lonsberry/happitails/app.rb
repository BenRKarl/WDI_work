require  "animal.rb"
require  "client.rb"
require  "shelter.rb"

def menu (shelter)
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
    shelter.display_animals
  when "B"
    # Display Clients
    shelter.display_clients
  when "C"
    # Create Animal
shelter.create_animal
  when "D"
    # Create Client
    shelter.create_client
  when "E"
    # Adopt Animal
    shelter.adopt_animal
  when "F"
    # Put Animal Up For Adoption
    shelter.abandon_animal
  when "Q"
    Kernel.exit
  end
end


shelter = Shelter.new('HappiTails', 10 east)
response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end
