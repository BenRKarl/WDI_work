require "benchmark"

class Needle
end

class Straw
end

class Haystack
  attr_accessor :constituents
  def initialize
    @constituents = 1_000.times.map{Straw.new}
    @constituents[rand(0..1_000)] = Needle.new
  end
end

haystack = Haystack.new

def find_needle_recursive(array)
  if array.length == 1
    return array[0].class == Needle ? array[0] : false
  else
    find_needle_recursive(array[0..(array.length/2-1)]) || find_needle_recursive(array[array.length/2..array.length-1])
  end
end

# find_needle_recursive(haystack.constituents)

def find_needle_iterative(array)
  array.each do |elem|
    return elem if elem.class == Needle
  end
end

Benchmark.bmbm(20) do |bm|
  bm.report("iterative") do
    10.times do
      find_needle_iterative(haystack.constituents)
    end
  end

  bm.report("recursive") do
    10.times do
      find_needle_recursive(haystack.constituents)
    end
  end
end

