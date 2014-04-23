# Week 1, Day 2 Homework
# Jeff Winkler
# April 22, 2014

# HWK Part2 Guess the number

# Prompt user for a number between 0 and 10.  Have computer pick a random number and compare
# to user guess.  Keep prompting user for guess until a match.

curr_num = rand(11)
puts "Please enter an integer between 0 and 10:"
user_guess = gets.chomp.to_i
num_guesses = 1

while user_guess != curr_num
  if user_guess > curr_num
    puts "Your guess is too high, please try again"
  else
    puts "Your guess is too low, please try again"
  end
  user_guess=gets.chomp.to_i
  num_guesses += 1
end

if num_guesses==1
  puts "You got it!  And in only #{num_guesses} try!"
else
  puts "You got it!  And in only #{num_guesses} tries!"
end


