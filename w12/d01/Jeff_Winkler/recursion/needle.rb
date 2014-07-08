
class Needle
end

class Straw
end

class Haystack
  attr_accessor :constituents
  def initialize
    @constituents = 1_000_000.times.map{Straw.new}
    #@constituents[rand(0..1_000_000)] = Needle.new
    @constituents[999350] = "hello"
  end
end

def find_needle(array)
  if array.length == 1
    if array[0] == "hello"
      return array[0]
    else
      return false
    end
  end
  left_index = 0
  right_index = array.length/2
  left_array = array[0..(right_index-1)]
  right_array = array[right_index..(array.length-1)]
  if find_needle(left_array) == false
    find_needle(right_array)
  else
    find_needle(left_array)
  end
  #find_needle(left_array) || find_needle(right_array)
end


h = Haystack.new

a = h.constituents

puts a.length

puts find_needle(a)

