puts "What is the current temperature?"
current = gets.chomp.to_i
puts "Is the A/C working? ('yes' or 'no' will do)"
ac = gets.chomp
puts "What temperature do you want it to be?"
desired = gets.chomp.to_i

if ac == "yes" && current > desired
  puts "Turn on the A/C please."
elsif ac == "no" && current > desired
  puts "Fix the A/C now! It's hot!"
elsif ac == "no" && current < desired
  puts "Fix the A/C whenever you have the chance... It's cool..."
else
  puts "I didn't understand.... run this again! Or maybe the A/C's working and you're comfortable!"
end

