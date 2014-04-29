require_relative 'animal'
require_relative 'client'
require_relative 'shelter'
require "rainbow"

#Code from the README BELOW

puts ""
puts ""
puts ""
puts ""
puts Rainbow("Welcome to the Metroplolitan Intra-Shelter Animal Network Database.").cyan
puts Rainbow("Please type the name of the shelter you're looking for.").yellow
print "(Remember this is a fictional database so you can type literally anything!: "
shelter_name = gets.chomp.to_s

print "OK and what's it's address?: "
shelter_address = gets.chomp.downcase.to_s

new_shelter = Shelter.new(shelter_name, shelter_address)

puts "Please wait while we load" + " " + Rainbow("#{new_shelter.name}'s").yellow + " " + "database."
puts "....."
puts "....."
puts "..... LOADED BRO!"

def menu new_shelter

  #puts "\e[H\e[2J"
  puts ""
  puts ""
  puts Rainbow("Welcome to #{new_shelter.name} Shelter!").yellow
  puts "Please choose from the menu below: "
  puts ""
  puts Rainbow("A:").red + " " + "See our animals."
  puts Rainbow("B:").red + " " + "See our clients."
  puts Rainbow("C:").red + " " + "Add an animal to our database."
  puts Rainbow("D:").red + " " + "Add yourself to our databse."
  puts Rainbow("E:").red + " " + "Adopt a pet."
  puts Rainbow("F:").red + " " + "Put your pet up for adoption."
  puts Rainbow("Q:").red + " " + "Leave #{new_shelter.name} Shelter."
  puts ""
  command = gets.chomp.upcase

  case command

  when "A"
    if new_shelter.animal_count != 0
      return new_shelter.display_animals
    else
      print Rainbow("Um... we actually don't have any animals. Try creating one!\n").red
      puts ""
    end

  when "B"
    if new_shelter.client_count != 0
      new_shelter.display_clients
      puts ""
    else
      puts Rainbow("You must be our first client! Add yourself to our database!\n").red
      puts ""
    end

  when "C"
    print "Wonderful! What's it's name?: "
    name = gets.chomp.downcase.to_s
    print "How cute! How old is " + Rainbow("#{name}").yellow + " ?: "
    age = gets.chomp.to_i
    print "Great. What kind of animal is it?: "
    species = gets.chomp.downcase.to_s
    new_animal = Animal.new(name, age, species)
    new_shelter.accept_animal(new_animal.name.downcase.to_s, new_animal)
    puts Rainbow("Awesome! " + Rainbow("#{name}").yellow + " was added to our database!").cyan

  when "D"
    print "Wonderful! What's your name?: "
    name = gets.chomp.downcase.to_s
    print "Love it. And how old are you?: "
    age = gets.chomp.to_i
    new_client = Client.new(name, age)
    new_shelter.accept_client(new_client.name.downcase.to_s, new_client)
    puts Rainbow("Awesome, " + Rainbow("#{name}").yellow + "! You were added to our database!").cyan

  when "E"

    puts "You are such a good person!"

    print "Please enter your name before choosing an animal: "
    adoptee_name = gets.chomp.downcase.to_s

    if new_shelter.clients[adoptee_name] == nil
    puts Rainbow("Hm. Don't see you in the database. Check our list of clients in the main menu to make sure you're there.").red
    return
    end

    print "Great, now which animal would you like to adopt?: "
    adoptee_animal = gets.chomp.downcase.to_s

    if new_shelter.animals[adoptee_animal] == nil
    puts Rainbow("Hm. Don't see that animal. Check our database in the main menu to make sure they're there.").red
    return
    end

    new_shelter.give_away_animal(adoptee_animal)
    new_shelter.clients[adoptee_name].accept_pet(adoptee_name, adoptee_animal)
    puts Rainbow("Amazing! " + Rainbow("#{adoptee_animal}").yellow + " now belongs to " + Rainbow("#{adoptee_name}").yellow + ".").cyan

  when "F"
    puts "Awwww. We'll find a good home for them."
    print "What's the animal's name?: "
    name = gets.chomp
    print "How cute! How old is #{name}?: "
    age = gets.chomp.to_i
    print "Great. What kind of animal is it?: "
    species = gets.chomp
    new_animal = Animal.new(name, age, species)
    new_shelter.accept_animal(new_animal.name.downcase, new_animal)
    puts Rainbow("Awesome! " + Rainbow("#{name}").yellow + " was added to our database. We'll work hard to make sure they're well taken care of.").cyan

  when "Q"
    Kernel.exit
  end

end

response = menu new_shelter
while response != "Q"
  response = menu new_shelter
end
