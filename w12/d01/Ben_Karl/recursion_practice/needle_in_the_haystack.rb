require 'pry'
require 'benchmark'

class Needle
end

class Straw
end

class Haystack
  attr_accessor :constituents
  def initialize
    @constituents = 1_000_000.times.map{ Straw.new }
    @constituents[rand(0..1_000_000)] = Needle.new
  end
end

stack = Haystack.new

#Recursive finding of the needle
def find_needle(array)
  if array.length == 1
    return array[0].class == Needle ? array[0] : false
  end
  find_needle(array[0..(array.length/2-1)]) || find_needle(array[array.length/2..array.length-1])
end

def find_needle_iterative(array)
  array.each do |elem|
    return elem if elem.class == Needle
  end
end

#Benchmarks
Benchmark.bmbm(20) do |bm|
  bm.report('iterative') do
    100.times do
      find_needle_iterative(stack.constituents)
    end
  end
  bm.report('recursive') do
    100.times do
      find_needle(stack.constituents)
    end
  end
end
