class Grandma

	def initialize()
		@deaf = true
	end

	def listen(input="")

		# if input.chomp == input.chomp.downcase
		# 	puts "WHAT's THAT? COME AGAIN, SONNY!"
		# elsif input.chomp == input.chomp.upcase
		# 	puts "NO, NOT SINCE 1929!"	
		# end
			

		if loud_enough?(input.chomp)
			puts "NO, NOT SINCE 1929!"			
		else			
			puts "WHAT's THAT? COME AGAIN, SONNY!"
		end

	end

	def loud_enough?(message)

		dc = 0
		uc = 0

		message.each_char do |char|
			dc += 1 if ('a'..'z').include?(char)	#char == char.downcase 			
			uc += 1 if ('A'..'Z').include?(char)	#char == char.upcase			
		end 
		uc >= dc ? true : false 


		# message_arr = message.gsub(" ","").split("")
		# upcase_arr = message_arr.select{|char| char == char.upcase}
		# upcase_arr.length.to_f / message_arr.length.to_f > 0.5

	end

end