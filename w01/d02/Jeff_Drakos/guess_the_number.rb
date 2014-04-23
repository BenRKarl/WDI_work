def guess
  puts "Guess your number"
  guess = gets.chomp
  random_number = [1,2,3,4,5,6,7,8,9,10]
  random_number = random_number.sample.to_i
  puts random_number
count = 1
while random_number != guess.to_i
  count = count + 1
  puts "you're wrong, guess again"
  guess = gets.chomp
end
puts "you win"
end

guess

