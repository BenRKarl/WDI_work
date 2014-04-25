require_relative 'apartment', 'building', 'person'

while final_input != 'q'
  puts "What would you like to create? (apartment, building, or person)"
    create_choice = gets.chomp.downcase!
      if create_choice[0] == "a"
        puts "So you want to create a bathroom, huh? Enter (unit), (rent), (sqft),
             (bedrooms), and (bathrooms).

