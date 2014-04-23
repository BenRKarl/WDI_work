puts "What is the current temp?"
curr_temp = gets.chomp.to_i
puts "Is the A/C working? (y)es or (n)o?"
response = gets.chomp
okans = ["y", "n"].include?(response)
while !okans
  puts "Please enter either y or n"
  response = gets.chomp
  okans = ["y", "n"].include?(response)
end
puts "What is the desired temp?"
desired_temp = gets.chomp.to_i
too_hot = curr_temp > desired_temp
if !too_hot
  if response == "y"
    puts "All good"
  else
    puts "NP but fix the A/C when you can"
  end
else
  if response == "y"
    puts "Turn on A/C please"
  else
    puts "Fix the A/C asap por favor"
  end
end



