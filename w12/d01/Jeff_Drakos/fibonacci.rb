require 'benchmark'
require 'pry'

def fibonacci_recursive(n)
return n if n < 2
(fibonacci_recursive( n - 1) + fibonacci_recursive( n - 2))
end



def fibonacci_iterative(n)
  x, y = 0, 1
  n.times do
    x, y = y, x + y
  end
  return x
end


puts fibonacci_recursive(15)
puts fibonacci_iterative(15)

Benchmark.bm do |x|
  x.report("recursive: ") {150.times do fibonacci_recursive(15) end}
  x.report("iterative: ") {150.times do fibonacci_iterative(15) end}
  end

