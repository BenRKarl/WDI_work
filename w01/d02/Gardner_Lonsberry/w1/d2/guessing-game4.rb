guesses = 1
    rand_num = 1 + rand(10)
    puts "Guess any number between 1 and 10 (including 1 and 10)"
    guess = gets.chomp.to_i
    while guess != rand_num

  if guess > rand_num
    puts "Try a little lower."
  elsif guess < rand_num
    puts "That guess was low.  Try higher."
  else
    puts "I said between 1 and 10!"
  end

guess = gets.chomp.to_i
guesses += 1
    end
puts "Yay! You guessed right! And it only took you #{guesses} tries"
