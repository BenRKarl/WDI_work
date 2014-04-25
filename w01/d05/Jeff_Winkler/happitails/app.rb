
require_relative "Shelter"
require_relative "Client"
require_relative "Animal"

def menu(shelter_obj)
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
    puts shelter_obj.name
    test_chg(shelter_obj)
  when "B"
     disp_animals(shelter_obj)
  when "C"
    make_animal(shelter_obj)
    puts shelter_obj.animals
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

def test_chg(shelter_obj)
  shelter_obj.name = "Something New"
end

def make_animal(shelter_obj)
  curr_animal = Animal.new(rand(100), 4, "Dog")
  curr_animal.toys.push("this", "that")
  shelter_obj.accept_animal(curr_animal.name, curr_animal)
end

def disp_animals(shelter_obj)
  all_animals = {}
  shelter_obj.animals.keys.each do |x|
    all_animals[x] = "shelter"
  end
  puts all_animals
end


def main
  h_tails = Shelter.new("HappiTails", "41 Union Square")
  puts h_tails

  response = menu(h_tails)
  while response != "Q"
    response = menu(h_tails)
  end


end

main

