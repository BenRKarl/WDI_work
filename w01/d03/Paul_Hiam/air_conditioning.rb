
ac_on = true
temp = rand(90) + 20 
puts "is the AC on?"
onoff = gets.chomp
if onoff == "no"
	ac_on = false
end

puts "what temp would you enjoy?"
pref_temp = gets.chomp.to_i
case ac_on
	when true
		if pref_temp > temp
			dif = temp - pref_temp
			puts "Jarvis, turn on A/C we're need to cool #{dif} degrees"
		else
			puts "no A/C needed"
		end
	when false
		if pref_temp > temp
		puts "Fix the AC then it's #{temp}"
		else
			puts "fix ac before it heats up: its #{temp}"
		end

end
