puts "What is your age, man?"
  response gets.chomp.to_i
  if response >= 21
    puts "What would you like?"
  else
    puts "No drinks for you!"
end
