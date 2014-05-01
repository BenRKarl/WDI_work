require 'Rainbow'
def assert_equal(actual, expected, statement=nil)
  if actual == expected
    puts Rainbow(statement).green if statement
  else
    puts Rainbow("Actual: #{actual}").green
    puts Rainbow("Expected: #{expected}").green
  end

  else
    if actual != expected
      puts Rainbow(statement).red
      puts Rainbow("Actual: #{actual}").red
      puts Rainbow('Expected: #{expected}').red
  end
end
