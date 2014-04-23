def guess
  puts "Guess a number between 0 and 10 (inclusive.... and input an integer). If it's the one I'm thinking of, I'll let you know."
  guess = gets.chomp.to_i
  solution = rand(0..10)
  count = 1
  while guess != solution
    puts "That's not it! Try again."
    count = count + 1
    if guess < solution
      puts "Your guess is too low."
    else
      puts "Your guess is too high."
    end
    guess = gets.chomp.to_i
  end
  puts "Awesome! You guessed correctly! It took you #{count} try/tries!"
end
guess
