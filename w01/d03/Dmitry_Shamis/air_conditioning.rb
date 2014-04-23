

puts "What is the current temperature?"
temp = gets.chomp.to_i

puts "Is the air conditioner on? y or n."
ac = gets.chomp.downcase[0]

puts "What temperature would you prefer?"
desired = gets.chomp.to_i

if ac == "y" && temp > desired
  puts "Turn on the A/C Please"
elsif ac == "n" && temp > desired
  puts "Fix the A/C now! It's hot!"
else ac == "n" && temp < desired
  puts "Fix the A/C whenever you have the chance... It's cool..."
end

