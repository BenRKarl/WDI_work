require_relative 'happitails/animal'
require_relative 'happitails/shelter'
require_relative 'happitails/client'

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


shelter = Shelter.new('happitails', '10 est')

response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end

client = Client.new('Beth', 30)


