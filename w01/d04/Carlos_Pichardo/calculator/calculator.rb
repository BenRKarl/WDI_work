class Calculator

	def add(x,y)
		x + y
	end 

	def subtract(x,y)
		x - y
	end

	def divide(x,y)
		if y == 0
			puts "NaN"
		else
			x.to_f / y.to_f
		end
	end

	def multiply(x,y)
		x * y
	end

end 