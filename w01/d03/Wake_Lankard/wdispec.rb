require 'rainbow'

def assert_equal(actual, expected, statement)
  if actual == expected
    puts Rainbow(statement).green
  else
    puts Rainbow(statement).red
  end
  puts actual
  puts expected

end


def add(x,y)
  x+y
end

def division(x,y)
  return "NaN" if y.zero?
    

  x.to_f/y.to_f
end

actual = add(2,2)
expected = 4
statement ="We have a functioning add method."

assert_equal(actual, expected, statement)

actual  = division(8,5)
expected = 1.6
statement = "We have a functioning divide method."
assert_equal( actual, expected, statement)

actual  = division(1,0)
expected = "NaN"
statment = "Method returns NaN when division is zero"
assert_equal(actual, expected, statment)