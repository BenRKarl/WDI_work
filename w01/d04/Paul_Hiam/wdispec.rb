require 'Rainbow'
def assert_equal(actual, expected, statement=nil)
	if actual == expected
		if statement
			puts Rainbow(statement).green
		else
			display_message(actual, expected, "green")
		end
	else
		puts Rainbow(statement). if statement
		display_message(actual, expected, "red") #.to_sym if not doing send below
	end
end

def display_message(actual, expected, color)
	puts Rainbow("Actual: #{actual}").send(color)
	puts Rainbow("Expected: #{expected}").send(color)
end

## refactored more DRY final version is in wdispec-instructor*
#require 'Rainbow'

def assert_equal2(actual, expected, statement=nil)
  comparison_string = "Actual:   #{actual}\nExpected:  #{expected}"
  a_single_message = ""
  if actual == expected
    color = "green"
    if statement
      a_single_message = statement
    else
      a_single_message = comparison_string
    end
  else
    color = "red"
    # puts Rainbow(statement).red if statement
    if statement
      a_single_message = statement
    end
    a_single_message += "\n"
    a_single_message += comparison_string
  end
  puts Rainbow(a_single_message).send (color)
end

