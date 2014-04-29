
require_relative "Shelter"
require_relative "Client"
require_relative "Animal"

def menu(shelter_obj)
  puts ""
  puts "Welcome to #{shelter_obj.name} Animal Shelter!"
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
  command = gets.chomp.upcase[0]

  case command
  when "A"
    disp_animals(shelter_obj)
  when "B"
     disp_clients(shelter_obj, "menu")
  when "C"
    make_animal(shelter_obj)
  when "D"
    create_client(shelter_obj)
  when "E"
    adopt_animal(shelter_obj)
  when "F"
    give_shelter(shelter_obj)
  when "Q"
    Kernel.exit
  end
end

def give_shelter(shelter_obj)
  if shelter_obj.clients.empty?
    puts `clear`
    puts "No clients available to give away a pet.  Please create some."
    return 0
  end
  begin
    disp_clients(shelter_obj, "make")
    puts ""
    puts "Please enter number (at left) of client giving to shelter."
    c_index = gets.chomp.to_i
  end while c_index < 0 || c_index > shelter_obj.clients.keys.length - 1
  c_key = shelter_obj.clients.keys[c_index]

  if shelter_obj.clients[c_key].pets.empty?
    puts ""
    puts "#{shelter_obj.clients[c_key].name} does not have any pets to give.  Please create some."
  else
    begin
      index_num = 0
      shelter_obj.clients[c_key].pets.each do |a_name, a_obj|
        print "#{index_num}. "
        index_num +=1
        puts a_obj
      end
      puts "Please enter number (at left) of pet being given to shelter."
      a_index = gets.chomp.to_i
    end while a_index < 0 || a_index > shelter_obj.clients[c_key].pets.keys.length - 1
    a_key = shelter_obj.clients[c_key].pets.keys[a_index]
    shelter_obj.accept_animal(a_key, shelter_obj.clients[c_key].pets[a_key])
    shelter_obj.clients[c_key].give_away_pet(a_key)
  end

end

def adopt_animal(shelter_obj)
  if shelter_obj.clients.empty?
    puts `clear`
    puts "No clients available to adopt a pet.  Please create some."
    return 0
  end
  begin
    disp_clients(shelter_obj, "make")
    puts ""
    puts "Please enter number (at left) of adopting client."
    c_index = gets.chomp.to_i
  end while c_index < 0 || c_index > shelter_obj.clients.keys.length - 1
  c_key = shelter_obj.clients.keys[c_index]

  if shelter_obj.animals.empty?
    puts ""
    puts "No animals at shelter.  Please create some."
  else
    begin
      index_num = 0
      shelter_obj.animals.each do |a_name, a_obj|
        print "#{index_num}. "
        index_num +=1
        puts a_obj
      end
      puts "Please enter number (at left) of animal being adopted."
      a_index = gets.chomp.to_i
    end while a_index < 0 || a_index > shelter_obj.animals.keys.length - 1
    a_key = shelter_obj.animals.keys[a_index]
    shelter_obj.clients[c_key].accept_pet(a_key, shelter_obj.animals[a_key])
    shelter_obj.give_away_animal(a_key)
  end

end

def create_client(shelter_obj)
  client_names = []

  shelter_obj.clients.each {|x,y| client_names.push(y.name)}

  if client_names.empty?
    puts "\nWhat is the client's name?"
    puts ""
    c_name = gets.chomp.downcase
    c_name.capitalize!
  else
    begin
      puts `clear`
      puts "Names Already In Use:"
      puts "-------------------------"
      puts client_names
      puts "\nWhat is the client's name?  Please use a name not already taken."
      puts ""
      c_name = gets.chomp.downcase
      c_name.capitalize!
    end while client_names.include?(c_name)
  end

  puts "What is #{c_name}'s age?"
  c_age = gets.chomp.to_i
  curr_client = Client.new(c_name, c_age)
  shelter_obj.accept_client(curr_client.name, curr_client)
  puts "Does #{c_name} have any pets?  (Y)es or (N)o."
  has_pets = gets.chomp.downcase[0]
  while has_pets == 'y'
    make_animal(shelter_obj, curr_client.name)
    puts "Any other pets?  (Y)es or (N)o."
    has_pets = gets.chomp.downcase[0]
  end
  puts `clear`
end

def make_animal(shelter_obj, client_name=nil)

  animal_names = []

  shelter_obj.animals.each {|x,y| animal_names.push(y.name)}

  shelter_obj.clients.each do |c_name, c_obj|
    c_obj.pets.each {|pet_name, pet_obj| animal_names.push(pet_obj.name)}
  end

  if animal_names.empty?
    puts "\nWhat is the animal's name?"
    puts ""
    a_name = gets.chomp.downcase
    a_name.capitalize!
  else
    begin
      puts `clear`
      puts "Names Already In Use:"
      puts "-------------------------"
      puts animal_names
      puts "\nWhat is the animal's name?  Please use a name not already taken."
      puts ""
      a_name = gets.chomp.downcase
      a_name.capitalize!
    end while animal_names.include?(a_name)
  end

  puts "How old is #{a_name}?"
  a_age = gets.chomp.to_i
  puts "And what kind of species is #{a_name}?"
  a_species = gets.chomp.downcase

  puts "Does #{a_name} have any toys? (Y)es or (N)o."
  toy_response = gets.chomp.downcase[0]
  a_toys = []
  while toy_response == 'y'
    puts "Please enter a toy:  "
    a_toys.push(gets.chomp)
    puts "Any other toys?  (Y)es or (N)o."
    toy_response = gets.chomp.downcase[0]
  end

  curr_animal = Animal.new(a_name, a_age, a_species, a_toys)
  #  if called with a client name, add the animal to that client and return
  if client_name != nil
    shelter_obj.clients[client_name].accept_pet(curr_animal.name, curr_animal)
    return 0
  end


  #  where to put this animal.  if no clients, at shelter by default
  #  if there are clients, prompt user if this animal is already a pet
  #  or lives at shelter.
  if shelter_obj.clients.empty?
    is_pet = 'n'
  else
    puts "Is #{a_name} a client's pet already?  (Y)es or (N)o."
    is_pet = gets.chomp.downcase[0]
  end
  if is_pet != 'y'
    puts `clear`
    puts "OK, #{a_name} will be well taken care of for now at #{shelter_obj.name}."
    shelter_obj.accept_animal(curr_animal.name, curr_animal)
  else
    begin
      disp_clients(shelter_obj, "make")
      puts "Please enter the client's number (at left)."
      c_index = gets.chomp.to_i
    end while c_index < 0 || c_index > shelter_obj.clients.keys.length - 1
    c_key = shelter_obj.clients.keys[c_index]
    shelter_obj.clients[c_key].accept_pet(curr_animal.name, curr_animal)
  end
end

def disp_clients(shelter_obj, from_where)
  puts `clear`
  if shelter_obj.clients.empty?
    puts "****** No clients yet.  Please create some. ******"
    return 0
  end

  index_num = 0
  shelter_obj.clients.each do |c_name, c_obj|
    if from_where == "make"
      print "#{index_num}. "
      index_num +=1
    end
    c_obj.description
  end

  if from_where == "menu"
    return continue_or_quit
  else
    return 0
  end
end

def disp_animals(shelter_obj)
  #  create all_animals hash by looking at shelter's animals and clients' pets
  #  if no animals exist, send that message, otherwise display animal and where
  #  they live.

  puts `clear`
  all_animals = {}
  shelter_obj.animals.each {|x,y| all_animals[y.name] = [y,shelter_obj.name]}

  shelter_obj.clients.each do |c_name, c_obj|
    c_obj.pets.each {|pet_name, pet_obj| all_animals[pet_name] = [pet_obj, c_name]}
  end

  if !all_animals.empty?
    all_animals.each do |x,y|
      print y[0]
      if y[1] == shelter_obj.name
        puts " and lives at #{y[1]}"
      else
        puts " and is a pet of #{y[1]}"
      end
    end
  else
    puts "****** No animals created yet.  Please create some. ******"
  end

  return continue_or_quit

end

def continue_or_quit
  answer = ""
  while answer != "C" && answer != "Q"
    puts "\n\n(C)ontinue or (Q)uit?"
    puts ""
    answer = gets.chomp.upcase[0]
  end

  return answer
end


def main
  h_tails = Shelter.new("HappiTails", "41 Union Square")
  puts `clear`

  #c1 = Client.new("Jim", 40)

  #a1 = Animal.new("Bob", 4, "dog", ["this", "that"])
  #a2 = Animal.new("Pel", 6, "bear")
  #a3 = Animal.new("Lichard", 2, "monkey", ["bananas"])
  # puts a1
  #c1.accept_pet(a1.name,a1)
  #c1.accept_pet(a3.name,a3)
  #h_tails.accept_client(c1.name, c1)
  #h_tails.accept_animal(a2.name, a2)




  response = menu(h_tails)
  while response != "Q"
    response = menu(h_tails)
  end


end

main

