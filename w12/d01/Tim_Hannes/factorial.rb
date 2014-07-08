4 * 3 * 2 * 1

def factorial_iterative(n)
  product = 1
  n.downto(2) do |x|
    product *= x
  end
  product
end

def factorial(n)
  return n if n <= 2
  return n * factorial(n-1)
end


# 1st.  n = 7              5040
# 2nd.  n = 6              720
# 3rd.  n = 5              120
# 4th.  n = 4              24
# 5th.  n = 3               6
# 6th.  n = 2               2
