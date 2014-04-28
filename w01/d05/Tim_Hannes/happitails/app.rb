require_relative ('animal.rb')
require_relative ('shelter.rb')
require_relative ('client.rb')

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
    #Display Animals
    shelter.display_animals
  when "B"
    shelter.display_client
  when "C"
    shelter.accept_animal('')
  when "D"
    # Create Client
  when "E"
    # Adopt Animal
  when "F"
    # Put Animal Up For Adoption
  when "Q"
    Kernel.exit
  end
end

shelter = Shelter.new('happitails', '10 est')

shelter = menu(shelter)

while response != "Q"
  response = menu shelter
end
