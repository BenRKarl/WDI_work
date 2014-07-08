require "benchmark"

def fibonacci_recursive(n)
  return n if n <= 1
  return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
end

def fibonacci_iterative(n)
  fib_array = [0, 1, 1]
  while fib_array.length <= n
    fib_array.push(fib_array[fib_array.length - 2] + fib_array[fib_array.length - 1])
  end
  fib_array[n]
end

Benchmark.bmbm(20) do |bm|
  bm.report("recursive") do
    10.times do
      fibonacci_recursive(19)
    end
  end

  bm.report("iterative") do
    10.times do
      fibonacci_iterative(19)
    end
  end
end