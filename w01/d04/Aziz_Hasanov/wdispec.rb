require "Rainbow"

def assert_equal(actual, expected, statement=nil)
	if actual == expected

		if statement
			puts Rainbow(statement).green
		else
			# puts Rainbow("Actual: #{actual}").green
			# puts Rainbow("Expected: #{expected}").green
			message(actual, expected, "green")
		end

	else
		puts Rainbow(statement).red if statement
		# puts Rainbow("Actual: #{actual}").red
		# puts Rainbow("Expected: #{expected}").
		message(actual, expected, "red")
	end
end

def message(actual, expected, color)
	puts Rainbow("Actual: #{actual}").send (color)
	puts Rainbow("Expected: #{expected}").send (color)
end