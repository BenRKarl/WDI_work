puts "What is the current temperature?"
temperature = gets.chomp.to_i

puts "Is the Air Conditioner working? (y) for yes or (n) for no."
ac_working = gets.chomp

puts "What temperature do you wish it was?"
desired_temp = gets.chomp.to_i

if (temperature > desired_temp) and (ac_working == "y")
  puts "Turn on the A/C, please."
elsif (temperature > desired_temp) and (ac_working == "n")
  puts "Fix the A/C, please."
elsif (temperature < desired_temp) and (ac_working == "n")
  puts "Fix the A/C whenever you have a chance...It's cool."
end
