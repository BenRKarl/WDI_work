class Calculator

	def add(x,y)
		x+y
	end

	def subtract(x,y)
		x-y
	end

	def divide(x,y)
		y == 0 ? "NaN" : x.to_f/y.to_f
	end

	def multiply(x,y)
		x*y
	end

end