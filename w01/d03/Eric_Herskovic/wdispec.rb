#def assert_equal(parameter1, parameter2)

#end

require 'rainbow'

def assert_equal(actual, expected, statement)
  if actual == expected
    #puts the statement in green
    puts Rainbow(statement).green
else
  # print the statement in red
  puts Rainbow(statement).red
  end
  puts actual
  puts expected
end

def add(x,y)
  x+y
end

def divide(x,y)
  if y == 0
    return "NaN"
  end
  x / y
  x.to_f / y. to_f
end



actual = add(2,2)
expected = 4
statement = "We have a functioning add statment"
assert_equal(actual, expected, statement)

actual = divide(8,5)
expected = 1.6
statment = "We have a divide method"
assert_equal(actual, expected, statment)

actual = divide(1,0)
expected = "NaN"
statement = "Method returns NaN when division by zero"
assert_equal(actual, expected, statement)

