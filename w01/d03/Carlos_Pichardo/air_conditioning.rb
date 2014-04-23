puts "What is the current temperature?"
temp = gets.chomp.to_i

puts "Is the A/C working? Yes or no?"
work = gets.chomp.downcase[0]

puts "What temperature do you wish it was?"
wish = gets.chomp.to_i

if work == "y" && temp > wish
	puts "Turn on the A/C Please"

elsif work == "n" && temp > wish
	puts "Fix the A/C now!  It's hot!"

elsif work == "n" && temp < wish
	puts "Fix the A/C whenever you have the chance...  It's cool..."

else
	puts "I don't know what to tell you."
end  
	