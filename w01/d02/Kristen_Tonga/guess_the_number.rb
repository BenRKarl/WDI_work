random_number = rand(1..10)
puts "Type a number a number between 1 and 10."
  user_number = gets.chomp.to_i

while random_number != user_number
  puts "Try again."
    user_number = gets.chomp.to_i
end

random_number == user_number
  puts "You guessed it! Horray!!"
