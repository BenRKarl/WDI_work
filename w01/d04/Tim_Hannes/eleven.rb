#key skills: Control Flow, and Conditionals
puts "What is the volume of your amplifier?"
volume = gets.chomp.to_i

puts "Do you want to push it off a cliff? (y/n)"
cliff = gets.chomp.downcase[0] #index into string and take first letter

  if volume < 11 && cliff == "y"
    puts "Crank it to 11."
  elsif
    volume < 11 && cliff == "n"
    puts"That's not cool, man."
  elsif
    volume >= 11 && cliff == "n"
    puts "Rock steady, man."
   else volume >= 11
      puts "turn it up to #{volume+1}"
end
