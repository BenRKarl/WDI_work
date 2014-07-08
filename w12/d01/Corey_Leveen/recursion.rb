def factorial_recursive(n)
  return n if n == 2
  return n * factorial_recursive(n-1)
end

def factorial_iterative(n)
  product = 1
  n.downto(2) do |x|
    product *= x
  end
  product
end

