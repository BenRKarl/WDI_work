require "Rainbow" #EDIT EDIT EDIT

def assert_equal(actual, expected, statement=nil)
  comparison_string = "Actual: #{actual}\nExpected: #{expected}"
  response = ""
  if actual == expected
    color = "green"
    if statement
      response = statement 
    else
      response = comparison_string
    end
  response += "\n"
  response += comparison_string
  else
    color = "red"
    if statement
      response = statement
    end
  response += "\n"
  response += comparison_string
  end
  puts Rainbow(response).send (color)
end
