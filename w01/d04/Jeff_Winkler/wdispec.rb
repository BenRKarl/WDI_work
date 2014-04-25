require 'Rainbow'

def assert_equal(actual, expected, statement=nil)
  if actual == expected
    if statement
      puts Rainbow(statement).green
    else
      disp_msg(actual,expected, "green")
    end
  else
    puts Rainbow(statement).red if statement
    disp_msg(actual,expected, "red")
  end
end

def disp_msg(actual, expected, color)
  puts Rainbow("Actual: #{actual}").send (color)
  puts Rainbow("Expected: #{expected}").send (color)
end
