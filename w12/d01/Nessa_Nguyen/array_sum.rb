require 'benchmark'

array = []
1000.times do
  array << rand(10000)
end

def r_sum(array)
  i = array.length
  if i == 1
    return array[0]
  else
    return array.last + r_sum(array[0..i-2])
  end
end

puts r_sum(array)


def i_sum(array)
  sum = 0
  array.each do |n|
    sum += n
  end
  return sum
end

puts i_sum(array)



Benchmark.bmbm do |bm|
  bm.report("recursive") do
    100.times do
      r_sum(array)
    end
  end

  bm.report("iterative") do
    100.times do
      i_sum(array)
    end
  end
end

#                 user     system      total        real
# recursive   0.100000   0.000000   0.100000 (  0.099227)
# iterative   0.020000   0.000000   0.020000 (  0.016231)
