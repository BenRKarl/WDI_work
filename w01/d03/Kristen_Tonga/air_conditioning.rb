puts "What is the current temprature?"
  temprature = gets.chomp.to_i
puts "Is the A/C functioning? y or n"
  AC = gets.chomp.downcase[0]
puts "What temprature do you wish it was?"
  ideal_temp = gets.chomp.to_i

if AC == "y" && ideal_temp < temprature
  puts "Turn on the A/C please"
elsif AC == "y" && ideal_temp > temprature
  puts "Turn off the A/C!"
elsif AC == "n" && ideal_temp < temprature
  puts "Fix the A/C now! It's hot!"
elsif AC == "n" && ideal_temp > temprature
  puts "Fix the A/C whenever you have the chance... It's cool..."
elsif ideal_temp = temprature
  puts "Well everything's perfect then! A/C or no!"
else
  puts "Sorry. I don't have an answer"
end
