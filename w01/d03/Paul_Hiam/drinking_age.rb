
def bouncer
	puts "how old are you?"
	age = gets.chomp.to_i
	
	if age >= 21 
		puts "we only have bourbon. Help us finish it."
	else
		puts "git on outa here you punk kid. this is a temple of sin."
	end
end

bouncer
