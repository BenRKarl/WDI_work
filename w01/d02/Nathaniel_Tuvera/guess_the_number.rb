puts "I want to play a game..."
puts "I have chosen a number between 1 and 10."
puts "Now, guess what it is."
guess = gets.chomp.to_i

answer = rand(11)
tries = 1
#puts answer - will remove, answer output for testing
while guess != answer
  if guess < answer
    puts "a little higher"
  else guess > answer
    puts "a little lower"
  end
  puts "Keep trying... guess again."
  tries += 1
guess = gets.chomp.to_i
  end
puts "Congrats, you win. It took you #{tries} tries."
