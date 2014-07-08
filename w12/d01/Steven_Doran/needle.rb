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

# iterative
def find_needle_iterative(array)
  array.each do |ele|
    if ele.class == Needle
      return ele
    end
  end
end

# recursive
def find_needle(array)
  if array.length == 1
    return array[0].class == Needle ? array[0] : false
  else
    array = array.each_slice((array.size/2.0).round).to_a
    find_needle(array[0]) || find_needle(array[1])
  end
end

haystack = Haystack.new

Benchmark.bmbm(20) do |bm|
  bm.report('iterative') do 
    100.times do 
      find_needle_iterative(haystack.constituents)
    end
  end

  bm.report('recursive') do
    100.times do 
      find_needle(haystack.constituents)
    end
  end
end