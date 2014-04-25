
def number_game
  puts "Guess the magic number!"
  number = gets.chomp
  if rand(10) == 2
    puts "You got it!"
  else
    puts "Nope. Guess again?"
   end
 end

