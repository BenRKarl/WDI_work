puts "What is the temperature?"
air_temp = gets.chomp.to_i
puts "Is the A/C functional? (y/n)"
ac_works = gets.chomp


puts "What temperature do you wish it was?"
desired_temp = gets.chomp.to_i
ac_works = gets.chomp.downcase[0]

if ac_works == "y" && (air_temp > desired_temp)
elsif ac_works = "n" && (air_temp > desired_temp)
  puts "Fix the AC now it's hot"
else
  puts "Fix the AC whenever you want.  Its cool"
end
