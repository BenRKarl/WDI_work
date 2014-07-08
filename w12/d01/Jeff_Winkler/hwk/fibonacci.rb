
require 'benchmark'

def fibo(n)
  if n<=2
    return 1
  end
  return fibo(n-1) + fibo(n-2)
end


def fibo_iter(n)
  seq = []
  seq[0] = 1
  seq[1] = 1
  for i in 2..n-1
    seq[i] = seq[i-1] + seq[i-2]
  end
  return seq[n-1]
end

puts fibo(30)
puts fibo_iter(30)

Benchmark.bmbm(20) do |bm|
  bm.report('recursive') do
    10.times do
      fibo(30)
    end
  end

  bm.report("iterative") do
    10.times do
      fibo_iter(30)
    end
  end
end
