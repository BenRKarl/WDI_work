#You are the manager at HappiTails animal shelter.
#You need to manage your shelter by storing and manipulating information about clients and animals.

def menu(shelter)
  puts ""

def method_name
  	puts "Welcome to HappiTails Animal Shelter!"
end
  
def method_name
  	puts "Please choose from the menu below: "
end
  
def method_name
 	puts ""
end
  
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
  when "C"
    # Create Animal
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

response = menu(shelter)
while response != "Q"
  response = menu(shelter)
end
