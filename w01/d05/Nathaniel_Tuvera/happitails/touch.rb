require_relative './animal'
require_relative './client'
require_relative './shelter'

def menu(shelter)
  puts " Welcome to the Laughter-Houses Animal Shelter!"
  print "Please choose an option from the menu below:  "
  puts ""
  puts "A: Display Animals"
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
      shelter.display_animals
    when "B"
      shelter.display_clients
    when "C"
      print "Registering animals name:  "
      name = gets.chomp
      print "#{name}'s age:  "
      age = gets.chomp
      print "#{name}'s species:  "
      species = gets.chomp
    when "D"
    when "E"
    when "F"
    when "Q"
  end
end


shelter = Shelter.new(name, address)



response = menu
while response != "Q"
  repsonse = menu
end
