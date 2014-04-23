puts "Yo. What's the temperature?"
curr_temp = gets.chomp.to_i

puts "Word. Is the A/C working (Y/N)?"
ac = gets.chomp.downcase

puts "Rad. What temperature would you like it to be?"
desired_temp = gets.chomp.to_i

if (ac == "y" || ac == "yes") && curr_temp > desired_temp
  puts "Turn on the A/C please."
elsif (ac == "y" || ac == "yes") && curr_temp < desired_temp
  puts "It's all good. If it gets too hot the AC will kick on."
elsif (ac == "n" || ac == "no") && curr_temp > desired_temp
  puts "Fix the A/C now! It's hot!"
elsif (ac == "n" || ac == "no") && curr_temp < desired_temp
  puts "Fix the A/C whenever you have the chance... It's cool..."
else 
  puts "Huh?"
end
