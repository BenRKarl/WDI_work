def prime?(num)
	return false if num < 2
	i = 2

	while i < num
		return false if num % i == 0
		i += 1
	end

	true
end	

prime?(8)



class Integer
	def prime?
		return false if self <= 1
		for i in (2..Math.sqrt(self))
			return false if self % i == 0
		end
		true
	end		
end


5.prime? 	