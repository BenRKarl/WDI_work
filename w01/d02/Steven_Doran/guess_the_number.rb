puts "Hi there. I'm thinking of a number between 1 and 10. Try and guess it:"

comp_number = (rand * 10).floor

number = gets.chomp.to_i.floor

guesses = 1

while number != comp_number
	if number < comp_number
		puts "Sorry dummy. Too low. Try again."
	end
	if number > comp_number && number < 10
		puts "Sorry dummy. Too high. Try again."
	end
	if number > 10
		puts "Seriously? \n\n Read the instructions again and try another number, genious."
	end
	number = gets.chomp.to_i.floor
	guesses += 1
end

puts "THAT'S IT!!! YOU'RE AMAZING!! AND IT ONLY TOOK YOU #{guesses} GUESSES!!\n \n Now go away. \n \n"