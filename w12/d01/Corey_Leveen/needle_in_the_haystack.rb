class Needle

end

class Straw

end

class Haystack
  attr_accessor :constituents
  def initialize
    @constituents = 1_000_000.times.map{ Straw.new }
    @constituents[rand(1_000_000)] = Needle.new
  end
end

another_needle = Needle.new
the_stack = Haystack.new

def find_needle(array)
  return array[array.length-1] if array[array.length-1].class == Needle
  array.pop
  find_needle(array)
end
