puts "What is the volume of your amplifier volume?"
amp_vol = gets.chomp.to_i

puts "Do you want to push it over the cliff? (yes or no)"
over_cliff = gets.chomp.downcase

if amp_vol < 11 && over_cliff == yes
	puts "Crank it to eleven"

elsif amp_vol < 11 && over_cliff == no
	puts "That's not very rock, man."

elsif amp_vol >= 11
	puts "Crank it one level higher"

else
	puts "I'm not feeling you."

end 