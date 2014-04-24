puts "How old are you?"
input = gets.chomp.to_i
 
if input >= 21
	puts "It's party time"
else
	puts "No booze for you!"
end