puts "Hello, what's the current temperature?"
current_temp = gets.chomp.to_i

puts "Is the A/C functional? (y/n)"
functional = gets.chomp.downcase[0]

puts "What temperature would you like?"
desired_temp = gets.chomp.to_i

if temp > desired_temp && functional == "y"
  puts "Turn the A/C on."
elsif current_temp > desired_temp && functional == "n"
  puts "Fix the A/C please."
elsif temp < desired_temp && functional == "n"
  puts "Fix it whenever."
else
  puts "Maybe get a heater?"
end

