# Write a recursive function that calculates the nth fibonnaci number
# Write an iterative (non-recursive) function that calculates the nth fibonnaci number
# Compare them using benchmark

require 'pry'
require 'benchmark'

def fib_recursive(n)
  return 0 if n == 1
  return 1 if n == 2
  return fib_recursive(n-1) + fib_recursive(n-2)
end

def fib_iterative(n)
  return 0 if n == 1
  return 1 if n == 2
  first = 0
  second = 1
  sum = 1
  (n-2).times do
    sum = first + second
    first = second
    second = sum
  end
  return sum
end

Benchmark.bmbm(20) do |bm|
  bm.report('iterative') do
    100.times do
      fib_iterative(10)
    end
  end

  bm.report('recursive') do
    100.times do
      fib_recursive(10)
    end
  end
end



# Write a recursive function that sums the elements of an array
# Write an iterative function that does the same
# Compare them using benchmark

def sum_recursive(array)
  return array[0] if array.length == 1
  array.pop() + sum_recursive(array)
end

def sum_iterative(array)
  array.reduce(:+)
end

binding.pry

Benchmark.bmbm(20) do |bm|
  bm.report('iterative') do
    100.times do
      sum_iterative([1,99,24,22])
    end
  end

  bm.report('recursive') do
    100.times do
      sum_recursive([1,99,24,22])
    end
  end
end
