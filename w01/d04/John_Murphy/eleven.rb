def pump

puts "What is the volume of your amplifier?"
volume = gets.chomp.to_i

puts "Do you want to push it over the cliff? (yes/no)"
decision = gets.chomp.downcase[0]

if volume < 11 && decision == "y"
  puts "Crank it to eleven!"
elsif volume < 11 && decision == "n"
  puts "You don't feel very motivated to Rock and Roll... do you..."
elsif volume >= 11 && decision == "y"
  puts "YEEEEEAAAAHHHHHHH!!!!! Pump up the volume!!"
else
  puts "Ok.. rock on."
end

end
