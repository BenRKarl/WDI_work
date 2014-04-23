puts "You want a drink? How old are you?"
age = gets.chomp.to_i

if age > 21
	puts "Drink away."
elsif age < 21
	puts "You're too young, dummy."
else
	puts "Huh? Try again. How old are you?"
	age = gets.chomp.to_i
end

		