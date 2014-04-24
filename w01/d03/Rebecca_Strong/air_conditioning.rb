def method
  puts "What is the temperature right now?"
  response "a" = gets.chomp.to_i
  puts "Does the Air Conditioner Work? (y/n)"
  response "b" y = gets.chomp
  reponse "c" n = gets.chomp
  puts "What is the desired temperature?"
  response "d" = gets.chomp.to_i


  if response "b" && response "a" > response "d"
    puts "Turn on the A/C, please"
  elsif response "b" && response "a" > response "d"
    puts "Fix the A/C now! It's hot!"
  elsif response "c" && response "a" < response "c"
    puts "Fix the A/C whenever you have the chance...It's cool..."
  end
end





puts "What's the current temperature?"
temp = gets.chomp.to_i

puts "Is the air conditioner working? (y/n)"
# YES
#yes
#yesaads
ac_working = gets.chomp.downcase [0]

puts "what temperature do you wish it was"
desired_temp = gets.chomp.to_i

if temp > desired_temp && ac_working == "y"
  puts "Turn the air conditioner on!"
elsif temp > desired_temp && ac_working == "n"
  puts "Fix the a/c please"
elsif temp < desired_temp && ac_working == "n"
  puts "Fix it whenever!"
else
  puts "maybe get a heater?"
end

