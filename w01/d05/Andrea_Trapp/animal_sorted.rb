random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts "1:__________"
random_animals.each { |animal| puts "#{animal}s" }
random_animals.map { |animal| puts animal+"s"} # creates a new array !!!

puts "2:__________"
random_animals_sorted = random_animals.sort
puts random_animals_sorted

puts "3:__________"
random_animals_sorted_reverse = random_animals.sort { |animal1, animal2| animal2 <=> animal1 }
puts random_animals_sorted_reverse

puts "4:__________"
random_animals_sorted_by_word_reverse = random_animals.map { |animal| animal.reverse }
puts random_animals_sorted_by_word_reverse

puts "5:__________"
random_animals_sorted_by_word_length = random_animals.sort { |animal1, animal2| animal1.length <=> animal2.length }
puts random_animals_sorted_by_word_length

puts "6:__________"
random_animals_sorted_by_last_character = random_animals.sort { |animal1, animal2| animal1[animal1.length-1] <=> animal2[animal2.length-1]}
random_animals_sorted_by_last_character = random_animals.sort { |animal1, animal2| animal1[-1] <=> animal2[-1]}
random_animals_sorted_by_last_character = random_animals.sort_by { |animal| animal[-1] }
puts random_animals_sorted_by_last_character


