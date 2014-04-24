require 'Rainbow'

def assert_equal(actual, expected, statement=nil)

  if actual == expected
    if statement
      puts Rainbow(statement).green
    else
      puts Rainbow("Actual:   #{actual}").green
      puts Rainbow("Expected: #{expected}").green
    end
  else
    puts Rainbow(statement).red if statement
    puts Rainbow("Actual: #{actual}").red
    puts Rainbow("Expected: #{expected}").red

  end
end
