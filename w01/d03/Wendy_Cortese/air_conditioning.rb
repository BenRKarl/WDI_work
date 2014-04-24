def airconditioning
puts "What is the current temperature?"
temp = gets.chomp
puts "Is the ac functional?"
functional = gets.chomp
puts "What temperature would you like?"
preferred = gets.chomp

if temp > preferred && functional == "yes"
  puts "Turn on ac!"
elsif functional == "no" && temp > preferred
  puts "Fix the ac"
else functional == "no" && temp < preferred
  puts "When you get a chance fix the ac"
end
end



# acworks = gets.chomp.downcase[0] to make it so that if you have an answer "yes" you grab "y" only







