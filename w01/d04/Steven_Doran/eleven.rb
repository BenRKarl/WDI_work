def eleven(curr_volume, cliff)
  
  puts "Crank it to 11!" if curr_volume < 11 && cliff == "y"
  
  puts "That's not very rock, man." if curr_volume < 11 && cliff == "n"
  
  puts "Crank it to #{curr_volume+1}!" if curr_volume >= 11 && cliff == "y"
  
  puts "Yeah, I get that." if curr_volume >= 11 && cliff == "n"

end

puts "What is the current volume of your amplifier?"
curr_volume = gets.chomp.to_i

puts "Do you want to push it over the cliff? (y/n)"
cliff = gets.chomp.downcase[0] # indexes the first letter of the string

eleven(curr_volume, cliff)