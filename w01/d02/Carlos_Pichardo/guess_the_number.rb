random = rand(10)
puts "Guess a number"
num = gets.chomp.to_i

while num != random
	puts "Guess again"
end

	if num == random
		puts "Congratulations, you picked the right number."

	elsif num > random
		puts "Too high!"

	elsif num < random
		puts "Too low!"

	else
		puts "Don't know what to say"

	end 
		
	
end