puts "What is the volume of the amplifier?"
volume = gets.chomp.to_i

puts "Do you want to push it off the cliff? y/n"
cliff = gets.chomp.downcase[0]

  if volume < 11 && cliff == "y"
    puts "Crank it to eleven!"
  elseif volume < 11 && cliff == "n"
    puts "That's not very rock, man."
  end

  if volume >= 11 && cliff == "n"
    puts "Keep rocking."
  elsif volume >= 11 && cliff == "y"
    puts "Crank it to #{volume +1}."
  end
