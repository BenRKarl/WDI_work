
def assert_equal(actual, expected, statement)
 if actual == expected
  puts statement
end

def add(x,y)
  x+y
end

def divide(x, y)
  if y == 0
    return 'NaN'
  end

  x.to_f / y.to_f
end


actual = add(2,2)
expected = 4
statement = "We have a functioning add method"
assert_equal(actual, expected, statement)

actual = divide(8,5)
expected = 1.6
statement = "we have a divide method"
assert_equal(actual, expected, statement)

actual = divide(1,0)
expected = "NaN"
statment = "Method returns NaN when division by zero"
assert_equal(actual, expected, statement)
