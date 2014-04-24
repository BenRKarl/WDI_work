
def eleven
puts 'whats the volume at?'
now_vol = gets.chomp.to_i
puts 'want to push it harder? (say yes/no wankah)'
higher = gets.chomp.downcase[0].to_s

	if now_vol < 11 && higher == 'y'
		puts 'Crank to eleven'
		now_vol = 11
	elsif now_vol <= 11 && higher == 'n'
		puts 'go stuff it'
	elsif now_vol >= 11 && higher == 'y'
		puts 'lets go one more'
		now_vol += 1
	else 
		puts 'hmm'
	end
	puts "now it's at #{now_vol}!!"

end

eleven