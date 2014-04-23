=begin

Prompt:

Create a ruby file guess_the_number.rb
You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
Specification:

The user should be asked to guess a number
If the user's guess is correct, the user should see a congratulatory message
If the user's guess is not correct, the user should be asked to guess the number again.
This should be done in a new file called guess_the_number.rb
Bonuses

When the user guesses incorrectly, tell them whether they guess too high or too low
When the user guesses the number correctly, tell them how many guesses it took them.

=end

def guess_my_number
  number = rand(1..10)
  guesses = 0
  puts "Guess a number 1 through 10"
  guess = gets.chomp.to_i

  while number != guess
    puts "That's not it, guess again."
    guess = gets.chomp.to_i
    guesses += 1
  end
    guesses += 1
    puts "Congratulations! You guessed right! It took you #{guesses} guesses." if guess == number
end

guess_my_number
