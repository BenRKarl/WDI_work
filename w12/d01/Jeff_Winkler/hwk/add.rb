
require 'benchmark'

def add_recursive(array)
  if array.length == 1
    return array[0]
  end
  return array[0] + add_recursive(array[1..array.length-1])
end


def add_iterative(array)
  sum = 0
  array.each do |elem|
    sum += elem
  end
  return sum
end

a = [1,2,3,4,5,6,7,8,9]

puts add_recursive(a)
puts add_iterative(a)


Benchmark.bmbm(20) do |bm|
  bm.report('recursive') do
    10.times do
      add_recursive(a)
    end
  end

  bm.report("iterative") do
    10.times do
      add_iterative(a)
    end
  end
end
