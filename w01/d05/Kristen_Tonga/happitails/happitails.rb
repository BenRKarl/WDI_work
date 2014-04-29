require_relative "shelter.rb"
require_relative "animal.rb"
require_relative "client.rb"

$happitails = Shelter.new("Happitails", "720 Broadway")
puts $happitails.name


def menu
  puts '
                        _       _
                       //\_____/\\
                     //  |^  ^|  \\
                         |0  0|
                        /  __  \
                       |   \/   |
                       | ______ |
                       | \____/ |
                        \______/  - woof'

  puts ""
  puts "Welcome to #{$happitails.name}! We are an animal shelter and rehoming agency located at #{$happitails.address}."
  puts "Please choose from the menu below:"
  puts ""
  puts "A: Display Animals"
  puts "B: Display Clients"
  puts "C: Create Animal"
  puts "D: Create Client"
  puts "E: Put Animal Up For Adoption"
  puts "F: Adopt Animal"
  puts "Q: Quit"
  puts ""
  command = gets.chomp.upcase

  case command
    when "A"
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
      puts '
           __        __        __      ___
         //\ \     / /\ \    / /\ \   [ 0  )>----<    -sssss
    ..._//  \ \__/ /   \ \__/    \ \__/ /

    '

      puts "THESE ARE THE ANIMALS CURRENTLY IN OUR DATABASE:"
      $happitails.display_animals
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    when "B"
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
      puts '

      ||||||||||                 _______
      /        \               ///|||||\\\
      | ^    ^ |              ||| ^   ^ |||
      | 0    0 |              ||| 0   0 |||
      (   <>   )       +      ||(   -   )||
       | ____ |               ||| \___/ |||
       \  ||  /               |||\_____/|||
        ||||||                |||       |||     '

      puts ""
      puts "THESE ARE THE CLIENTS CURRENTLY IN OUR DATABASE:"
      $happitails.display_clients
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    when "C"
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
      puts '

         ^ ^             _.
      .__/^ )----------//
       \__?             |     - who?
          |___||_____(  /
          ||  ||      ||
          --  --      --                    '

      puts ''
      puts "To add a new animal to the database"
      puts "enter the following information:"
        puts ""
        puts "NAME?"
          name = gets.chomp.capitalize
        puts "AGE?"
          age = gets.chomp.to_i
        puts "SPECIES?"
          species = gets.chomp.downcase
          animal = Animal.new(name, age, species)

      animal_obj = name << "_animal"
      shelter.accept_animal(name, animal_obj)

      puts "Favorite Toys? Please seperate each toy with a comma"
        new_toy = gets.chomp.downcase
      animal.toys(new_toy)



      puts "#{animal.to_s } .#{name} been added to the database."
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    when "D"
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
      puts '

         _______
       ///|||||\\\
      ||| ^   ^ |||
      ||| 0   0 |||
      ||(   -   )||
      ||| \___/ |||       ???- NAME -???
      |||\_____/|||       ???- age  -???
      |||       |||       ???- pets -????   '

      puts ""
      puts "To add a new client to the database"
      puts "enter the following information:"
        puts ""
        puts "NAME?"
          name = gets.chomp.capitalize
        puts "AGE?"
          age = gets.chomp.to_i
        puts "CURRENT PETS? Please list: a,b."
          pets = gets.chomp.capitalize.to_arr
      client.new(name, age, pets)

      user_name = name << "_client"
      shelter.accept_client(name, user_name)

      puts "#{client.to_s } .#{name} been added to the database."
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    when "E"
    puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    puts "
            _____________________________________
            ||---------------------------------||
            ||                                 ||
            ||        ADOPT ME PLEASE!!        ||
            ||             ^. .^               ||
            ||              |.|                ||
            ||               -                 ||
            ||                                 ||
            ||---------------------------------||
            _____________________________________     "
      puts ""
      puts "What animal is up for adoption?"
      puts "NAME?"
        name = gets.chomp.capitalize

      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'


    when "F"
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
      puts '

      ||||||||||
      /        \           ^ ^             _.
      | ^    ^ |        .__/^ )----------//
      | 0    0 |         \__?             |            ^
      (   <>   )    +       |___||_____(  /    ==     / \
       | ____ |             ||  ||      ||            |_|
       \  ||  /             --  --      --
        ||||||                                    '
      puts ""
      puts "An animal has been adopted!"
        puts "ANIMAL NAME?"
          animal_name = gets.chomp.capitalize
        puts "BY WHAT CLIENT?"
          client_name = gets.chomp.capitalize
      shelter.give_away_animal
      puts '_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _'
    when "Q"
      Kernel.exit
  end
end

response = menu
while response != "Q"
  response = menu
end


happitails = Shelter.new("Happitails", "720 Broadway")
#happitails_animals = Animal.new{Puppy: "dog", Kat: "cat", Chairman_Meow: "cat"}
