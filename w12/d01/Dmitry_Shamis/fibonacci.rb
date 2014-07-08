require 'pry'
require 'benchmark'

def fibonacci_recursive(n)
  if n < 2
    return n
  else
    fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end

# WHY IS THIS DIFFERENT FROM THE VERSION BELOW??

# def fibonacci_iterative(n)
#   x = 0
#   y = 1
#   n.times do
#     x = y
#     y = x + y
#   end
#   return x
# end

def fibonacci_iterative(n)
  x, y = 0, 1
  n.times do
    x, y = y, x + y
  end
  return x
end

puts fibonacci_recursive(10)
puts fibonacci_iterative(10)

Benchmark.bm do |x|
  x.report("recursive: ") {100.times do fibonacci_recursive(20) end}
  x.report("iterative: ") {100.times do fibonacci_iterative(20) end}
  end
