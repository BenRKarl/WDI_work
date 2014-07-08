require 'pry'
require 'benchmark'

def recursive(array)
  if array.length == 1
    return array[0]
  else
    recursive(array[0..array.length/2-1]) + recursive(array[array.length/2..array.length-1])
  end
end

def iterative(array)
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

puts recursive(array)
puts iterative(array)

Benchmark.bm do |x|
  x.report("recursive: ") {100.times do recursive(array) end}
  x.report("iterative: ") {100.times do iterative(array) end}
end
