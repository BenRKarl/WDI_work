def numbergame
  number = rand(1..10)
  puts "Guess the number, 1-10"
  numberguess = gets.chomp.to_i
  while numberguess != number
    puts "Try Again"
    numberguess = gets.chomp.to_i
  end
  puts "Congratulations"
end
