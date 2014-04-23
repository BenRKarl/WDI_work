print "What's the current temperature? "
current_temp = gets.chomp.to_i
print "Is your air conditioner working? (yes or no)"
air_con_working = gets.chomp
print "What temperature do you wish it to be? "
desire_temp = gets.chomp.to_i

case 
when air_con_working == "yes"
  air_con_working = true
when air_con_working == "no"
  air_con_working = false
end

if current_temp > desire_temp && air_con_working == false
  puts "Get the airconditioner fixed!"
elsif current_temp > desire_temp && air_con_working
  puts "Well, turn on the air conditioner."

elsif current_temp <= desire_temp && !air_con_working
  puts "Chill. but fix the ac when you have a chance"
end
