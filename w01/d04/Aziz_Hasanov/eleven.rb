puts "what's ur volume?"
volume = gets.chomp.to_i
puts "do u wanna take it over the cliff?)(y/n)"
cliff = gets.chomp.downcase[0]

if volume < 11 && cliff = "y"
	puts "crank it to 11"
elsif volume < 11 && cliff == "n"
	puts "u r a feeble rocker"
elsif volume >= 11 && cliff == "n"
	puts "rock steady"
else
	puts "turn it up to #{volume+1}"
end