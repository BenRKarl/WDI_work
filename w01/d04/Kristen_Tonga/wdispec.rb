require 'Rainbow'

def assert_equal


=begin
a_single_message = ""

def assert_equal(actual, expected, statement=nil)
  if actual == expected
    if statement
       a_single_message = Rainbow(statement).green
    else
      a a_single_message = display_message(actual, expected, "green")
      #puts Rainbow("Actual: #{actual}").green
      #puts Rainbow("Expected: #{expected}").green
    end
  else
    a_single_message = Rainbow("FALSE" + statement).red + display_message(actual,expected, "red")
    #display_message(actual, expected, "red".to_sym)
    #puts Rainbow("Actual: #{actual}").orange
    #puts Rainbow("Expected: #{expected}").yellow
  end
  a_single_message +=

  puts a_single_message
end

def display_message(actual, expected, color)
  puts Rainbow("Actual: #{actual}\n"Expected: #{expected}").send (color)
  #puts Rainbow("Actual: #{actual}").send (color)
  #puts Rainbow("Expected: #{expected}").send (color)
end


# NOTE: better to put the color for each T/F directly under if and else in form color = "red" and get rid of references to Rainbow in all other places

=end
