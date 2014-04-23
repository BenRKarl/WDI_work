guesses = 1
rand_num = 1 + rand(10)

puts "Pick an integer between 1 and 10"
guesses = gets.chomp.to_i
while guesses != rand_num

  if guesses > rand_num
    puts "Guessed too high. Get a little bit lower now."
  elsif guesses < rand_num
    puts "You're aiming too low.  Go higher!"
  else
    puts "What kind of jive is that?"
  end

  guesses = gets.chomp.to_i
  guesses += 1
end

puts "You got it duuuuude! And it only took you #{guesses} tries"
