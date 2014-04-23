def number_game 
attempt = 1
puts "Guess a number from 0 to 10"
guess = gets.chomp.to_i
number = rand(10)

  while guess != number
	if guess > number 
	  puts "You guess too high"
    else guess < number
      puts "You guess too low"
    end
    puts "Guess again"
	attempt += 1
	guess = gets.chomp
     	   
  puts "You guessed correctly! Took you #{i} guess(es)"
  end  
end

number_game()