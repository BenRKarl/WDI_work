def  volume
   volume=(1...20)


Puts "What is the volume of your amplifier?"
Puts "Do you want to throw it off the cliff?" (y/n)

if user_input <=11 && y
  Puts "Crank it to eleven"
elsif volume <=11 && n
  Puts "That's not very rock, man"
elsif volume >=11
  Puts "Crank it up (+1)"
end

end





#Matt's solution
puts "what's your volume?"
volume = gets.chomp.to_i

puts "do you want to take it over the cliff?(y/n)"
cliff = gets.chomp.downcase[0]
# so that Yes yes YES will be acceptable

if volume < 11 && cliff == "y"
  puts "Crank it to 11"
elsif volume < 11 && cliff == "n"
  puts "You are a feeble rocker."
else volume >= 11
puts "turn it up to #{volume+1}"
end
