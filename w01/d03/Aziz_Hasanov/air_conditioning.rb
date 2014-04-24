puts "Does air conditioner function well?"
ac_works = gets.chomp.downcase[0] # grabs 1st letter from input

puts "What temperature is it now?"
temp = gets.chomp.to_i

puts "Which temperature do you preffer?"
preffer = gets.chomp.to_i

if ac_works = "y" && temp > preffer
	puts "Turn on AC"
elsif ac_works = "n" && temp > preffer
	puts "Fix the AC now! It's hot!"
elsif ac_works = "n" && temp < preffer
	puts "Fix AC whenever you have a chance. It's cool."
end