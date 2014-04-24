
print "What is the volume of your amplifier: "
volume = gets.chomp.to_i

print "Want to push it over the cliff? (y/n): "
over_cliff = gets.chomp.downcase[0]

if volume < 11 && over_cliff == "y"
	puts "Crank it to eleven"
elsif volume < 11 && over_cliff == "n"
	puts "That's not very rock, man."
elsif volume >= 11 && over_cliff == "y"
	puts "Crank it up to #{volume+1}."
else 
	puts "Rock steady."
end
