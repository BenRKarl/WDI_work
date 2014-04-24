puts "What is your age?"
age = gets.chomp.to_i

if age < 21
  puts "Don't drink and drive. Just don't drink at all, because it's illegal."
elsif age >= 21
  puts "Yay, you can drink legally. Have fun! (safely)"
else
  puts "Put in an integer!"
end

# puts "What is your age?"
# age = gets.chomp.to_i

# case age
# when age < 21
#   puts "Don't drink and drive. Just don't drink at all, because it's illegal."
# when age >= 21
#   puts "Yay, you can drink legally. Have fun! (safely)"
# else
#   puts "Put in an integer!"
# end
