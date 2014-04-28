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


=begin
def add(x,y)
  x + y
end

actual = add(2,2)
expected = 4
statement = "We have a functioning add method"

assert_equal(actual, expected, statement)
=end


def divide(x,y)
  return "NaN" if y == 0   # y.zero?
  x.to_f / y.to_f	
end

actual = divide(8,5)
expected = 1.6
statement = "We have a divide method"
assert_equal(actual, expected, statement)


actual = divide(1,0)
expected = "NaN"
statement = "Method returns NaN when divided by 0"
assert_equal(actual, expected, statement)
















