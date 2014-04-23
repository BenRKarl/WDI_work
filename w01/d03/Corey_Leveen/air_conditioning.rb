puts "What's the current temperature?"
temperature = gets.chomp.to_i
puts "Is the A/C functional?"
functionality = gets.chomp.downcase
puts "What temperature do you desire?"
desired_temp = gets.chomp.to_i

if functionality == "yes" && temperature > desired_temp
  puts "Turn on the A/C please."

elsif functionality == "no" && temperature > desired_temp
  puts "Fix the A/C now! It's hot!"

elsif functionality == "no" && temperature < desired_temp
  puts "Fix the A/C whenever you have the chance.. It's cool.."

elsif functionality == "no" && temperature == desired_temp
  puts "Just right, but I should get this A/C fixed."

elsif functionality == "yes" && temperature == desired_temp
  puts "Perfection."

end
