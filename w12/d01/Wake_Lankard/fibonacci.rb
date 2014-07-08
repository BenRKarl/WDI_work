require 'pry'
require 'pry-nav'

def rec_fibo(num)
  return num if num == 1

  num = num + rec_fibo(num-1)
end


def it_fibo(num)
  answer = 0
  num.downto(1) do |num|
    answer = answer + num
  end
  answer

    
end

puts rec_fibo(5)
puts it_fibo(5)


require 'benchmark'

iterations = 100_000

Benchmark.bm do |bm|
  # joining an array of strings
  bm.report do
    iterations.times do
      rec_fibo(100);
    end
  end

  # using string interpolation
  bm.report do
    iterations.times do
      it_fibo(100)
    end
  end
end
