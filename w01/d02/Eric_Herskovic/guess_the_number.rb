turns = 1
number_picked = 1 + rand(10)

puts "Well hello there. I am thinking of a number between 1 and 10. Think you can guess?"

guess = gets.chomp.to_i

while guess != number_picked
#guess = gets.chomp
#guess = guess.chomp
#guess = guess.to_i

  if guess > number_picked
    puts "Nope guess again. Toooo lowwww"
  elsif guess < number_picked
    puts "Nope, nope, nope. Guess again. Toooo highhh"
  else
    puts "Come on now. You can do better than that."
  end #if

 guess = gets.chomp.to_i
 turns += 1
end

puts "Whoa you got it. You did well. Go get some cake."
