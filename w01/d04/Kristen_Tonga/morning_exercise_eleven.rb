puts "What is the volume of your amplifier?"
  volume = gets.chomp.to_i
puts "Well, do you want to push it over the cliff? y/n"
  cliff = gets.chomp.downcase[0]

if volume < 11 && cliff == "y"
  puts "Crank it to 11!!!"
elsif volume < 11 && cliff == "n"
  puts "That's not very rock, man!"
else volume >= 11
  puts "Crank it up a level, dude, to #{volume+1}!!"
end
