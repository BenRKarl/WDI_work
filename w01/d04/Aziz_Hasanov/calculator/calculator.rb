class Calculator
	def add(x, y)
		x + y
	end
	def subtract(x, y)
		x - y
	end
	def divide(x, y)
		if y != 0
			x / y
		else
			"NaN"
		end
	end
	def multiply(x, y)
		x * y
	end
end