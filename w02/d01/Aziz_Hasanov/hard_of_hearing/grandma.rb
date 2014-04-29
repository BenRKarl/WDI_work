class Grandma
	attr_accessor :listen, :loud_enough
	# attr_accessor is not neccessary in this problem
	
	def initialize
		@deaf = true
	end

	def listen(input="")
		if input.chomp == input.chomp.downcase # sweet nothings
			puts "WHAT's THAT? COME AGAIN, SONNY!"
		elsif input.chomp == input.chomp.upcase # THE LOUDNESS
			puts "NO, NOT SINCE 1929!"
		end
	end

	def loud_enough?(input)
		input_array = input.split("") # .gsub(" ","")
		upcase_array = input_array.select{ |i| i == i.upcase }
		upcase_array.length.to_f / input_array.length.to_f > 0.5
		
		# my logic
		# if
		# 	puts "CAPItal"
		# elsif
		# 	puts "lowerCASE"
		# end
	end
end