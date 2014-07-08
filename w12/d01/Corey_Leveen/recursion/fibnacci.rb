require 'benchmark'

def fib_recursive(n)
  return n if n <= 1
  return fib_recursive(n-1) + fib_recursive(n-2)
end

def f(n)
  # Not currently correct
  return n if n < 2
  i = 1
  c = 0
  while i <= n
    c += ((i-1)+(i-2))
    i += 1
  end
  return c
end

Benchmark.measure { fib_recursive(20) }
Benchmark.measure { fib_iterative(20) }
