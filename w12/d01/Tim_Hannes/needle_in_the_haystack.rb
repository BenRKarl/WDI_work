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

# needle = Needle.new
# needle.class => Needle

# def find_needle(array)
#   if (array[] == Needle.class)
#     return Needle
#   else
#     return false
#     find_needle(array.length > 1)
#   end
# end
h = Haystack.new

def find_needle(array)
  if array.length == 1
    the_thing = array[0]
    return the_thing.class == Needle ? the_thing : false
  end
  find_needle(array[0..array.length/2-1]) || find_needle([array.length/2..array.length-1])
end

def find_needle_iterative(array)
  array.each do |elem|
    return elem if elem.class == Needle
  end
end

find_needle(h.constituents)

needle = find_needle(h.constituents)

