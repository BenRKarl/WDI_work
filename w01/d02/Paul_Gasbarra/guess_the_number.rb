#guess_the_number

number = 1 + rand(10)
guess = 0
guess_count = 1

puts "Hey friend! Let's play a game."
puts "I'm thinking of a number from 1 to 10."
puts "If you guess it, you win!"
puts "What's your guess, friend?"
guess = gets.to_i

while guess != number
  if guess < number
    puts "Not quite. Guess higher."
  else guess > number
    puts "Sorry. That's too high. Guess lower"
  end
  guess = gets.to_i
  guess_count = guess_count + 1
end

puts "You won! Here's your how many tries it took: #{guess}!"





