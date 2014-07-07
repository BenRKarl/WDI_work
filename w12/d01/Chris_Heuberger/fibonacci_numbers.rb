require 'benchmark'

# Write a recursive function that calculates the nth fibonnaci

def fibonacci_recursive(n)
  n <= 1 ? n :  fibonacci( n - 1 ) + fibonacci( n - 2 )
end

# Write an iterative function that calculates the nth fibonnaci number

def fibonacci_iterative(n)
  i = 0
  j = 1
  cur = 1
  while cur <= n
    k = i
    i = j
    j = k + j
    cur = cur + 1
  end
  i
end

# Compare them using benchmark

Benchmark.bmbm(20) do |bm|
  bm.report('fibonacci_recursive') do
    10.times do
      fibonacci_recursive(h.n)
    end
  end

  bm.report('fibonacci_iterative') do
    10.times do
      fibonacci_iterative(n)
    end
  end
end
