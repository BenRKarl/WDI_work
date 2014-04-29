print "What is the current temperature?: "
current_temperature = gets.chomp.to_i

print "Is the AC functional? (y/n): "
ac_functional = gets.chomp.downcase[0]

print "What temperature do you wish?: "
temperature = gets.chomp.to_i


if ac_functional == "y" && temperature < current_temperature
	print "Turn on the A/C please."	
elsif current_temperature > temperature
	print "Fix the A/C now! It's hot!"
elsif current_temperature < temperature
	print "Fix the A/C whenever you have the chance... It's cool..."	
else
	"maybe get a heater?"
end

