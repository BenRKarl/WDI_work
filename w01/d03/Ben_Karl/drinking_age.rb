#Checks whether the user is of legal drinking age.

puts "So you're trying to get a drink, huh?"
print "How old are you?: "
user_age = gets.chomp.to_i

if user_age >= 21
  puts "Great! here's a shot!"
elsif user_age < 21
  puts "Sorry dude you're too young for a beer."
else
  puts "That's not valid, you're not responsible enough to drink."
end

