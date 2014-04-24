# Part 2: Guess the number

puts "Welcome to \"Guess the number\""
puts "Please enter a number between 0 and 10"
user_number = gets.chomp.to_i

random_number = rand(0..10)

guess_count = 1

while user_number != random_number	

	if user_number < random_number
		puts "Sorry... your number is too low. Please make a new guess:"
	else
		puts "Sorry... your number is too high. Please make a new guess:"
	end

	user_number = gets.chomp.to_i
	guess_count += 1
end

puts "Hurray, you guessed the right number!!!!!"
puts "You needed #{guess_count} guesses."
puts "bye"