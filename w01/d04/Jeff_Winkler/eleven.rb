
puts "What volume please?"
volume = gets.chomp.to_i
puts "Do you want to push it over the cliff? y or n"
cliff = gets.chomp.downcase[0]

if volume >10
  puts "Crank it one level higher"
elsif
  cliff == 'y'
  puts "Crank it to eleven"
else
  puts "That's not very rock, man"
end


