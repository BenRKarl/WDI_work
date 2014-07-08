require 'benchmark'

# Write a recursive function that sums the elements of an array

def array_sum_recursive(array)
  return 0 unless array.length > 0
  return array.shift + sum(array)
end

# Write an iterative function that does the same

def array_sum_iterative(array)
  return if n.zero? # base case
  puts n
  countdown(n-1)sum = 0
  array.each {|x| sum = sum + x }
  return sum
end

# Compare them using benchmark

Benchmark.bmbm(20) do |bm|
  bm.report('array_sum_recursive') do
    10.times do
      array_sum_recursive(array)
    end
  end

  bm.report('array_sum_iterative') do
    10.times do
      array_sum_iterative(array)
    end
  end
end