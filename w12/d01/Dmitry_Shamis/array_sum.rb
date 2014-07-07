require 'pry'
require 'benchmark'

def add_recursive(array)
  if array.length == 1
    return array[0]
  else
    add_recursive(array[0..array.length/2-1]) + add_recursive(array[array.length/2..array.length-1])
  end
end

def add_iterative(array)
  sum = 0
  array.each do |x|
    sum = sum + x
  end
  return sum
end

array = []

100.times do
  array << rand(10000)
end

puts add_recursive(array)
puts add_iterative(array)

Benchmark.bm do |x|
  x.report("recursive: ") {100.times do add_recursive(array) end}
  x.report("iterative: ") {100.times do add_iterative(array) end}
end
