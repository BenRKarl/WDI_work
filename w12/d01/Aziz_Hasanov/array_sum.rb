require "benchmark"


def sum_recursive(array)
  count = 0
  if array.length == 1
    count += array[0]
  else
    puts array.length
    count += array[array.length - 1]
    sum_recursive(array.pop)
  end
  puts count
end

def sum_iterative(array)
  count = 0
  array.each do |i|
    count += i.to_i
  end
  count
end

sum_recursive([1,2,3,4,5])