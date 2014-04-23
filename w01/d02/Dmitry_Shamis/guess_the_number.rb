# Number Guesser
comp_num = rand(10)

puts "The computer is thinking of a number 1 through 10. What is it?"
user_num = gets.chomp.to_i

counter = 1

while user_num != comp_num
  if user_num < comp_num
    puts "Too low"
    user_num = gets.chomp.to_i
  elsif user_num > comp_num
    puts "Too high"
    user_num = gets.chomp.to_i
  end
  counter += 1
end

if counter == 1
  puts "Congratulations. It took you #{counter} try."
else
  puts "Congratulations. It took you #{counter} tries."
end
