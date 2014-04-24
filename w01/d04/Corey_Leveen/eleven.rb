puts "Please enter the volume of your amplifier, 1-11."
volume = gets.chomp.to_i
puts "Do you have a desire to push it over the cliff?????"
desire = gets.chomp.downcase

if volume < 11 && desire[0] == "y"
  puts "Crank it to eleven!!!"
elsif volume < 11 && desire[0] == "n"
  puts "That's not very rock, man."
elsif volume >= 11
  puts "Crank it higher!"
else "What??"
end

