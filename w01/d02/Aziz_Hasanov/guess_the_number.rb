puts "Hi there! Guess the number from 0 to 10"
input = gets.chomp.to_i
random_number = rand(11).to_i
puts random_number
##numbers = [1,2,3,4,5,6,7,8,9,10]

if input == random_number
	puts "Congrats! You guessed the right number"
elsif input > random_number
	puts "Too high. Try again."
else # input < random_number
	puts "Too low. Try again."
# else
#	 puts "Try again"
end

## while input != random_number
##	 puts "Try again"
## end
## puts "Congrats! You guessed the right number"