require 'pry'
require 'pry-nav'
require 'benchmark'


def rec_arraysum(arr)
  sum = 0
  return arr[0] if arr.length == 1
  sum = arr[0]
  arr.shift
  sum + rec_arraysum(arr)
end

def it_arraysum(arr)
  sum = 0
  arr.each { |x| sum = sum + x }
  sum
end


arr = [1,2,3,4,5]

puts rec_arraysum(arr)
arr = [1,2,3,4,5]
puts it_arraysum(arr)

iterations = 100_000

Benchmark.bm do |bm|
  # joining an array of strings
  bm.report do
    iterations.times do
arr = [1,2,3,4,5]
      rec_arraysum(arr);
    end
  end

  # using string interpolation
  bm.report do
    iterations.times do
      arr = [1,2,3,4,5]

      it_arraysum(arr)
    end
  end
end

