require 'Rainbow'

def assert_equal(actual, expected, statement=nil)
  if actual == expected
  	if statement
  	  puts Rainbow(statement).green
    else
      display_message(actual, expected, "green")
    end
  else  	
  	puts Rainbow(statement).red if statement
  	display_message(actual, expected, "red")
  end
end

# color muss per send an das Gem Rainbow uebergeben werden
# die Uebergabe eines Strings als color an display_message 
# und anschliessend Aufruf mit Rainbow(...).color 
# funktioniert nicht -> ArgumentError
# daher Rainbow(...).send (color) -> works!!!

# works: puts Rainbow(statement).red
# does not work: puts Rainbow(statement)."red"

def display_message(actual, expected, color)
	puts Rainbow("Actual:   #{actual}").send (color)
  	puts Rainbow("Expected:   #{expected}").send (color)
end