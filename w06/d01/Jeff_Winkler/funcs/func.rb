
def perim (length, width)

  return 2*length+2*width

end


class Rect
  def initialize

  end
  def perimeter(x,y)
    2*(x+y)
  end
end

class Rect2
  def initialize(x,y)
    @x = x
    @y = y

  end
  def perimeter
    2*(@x+@y)
  end
end


module Mathit
  def self.p
    puts "hello"
  end
end

a = [1,2,3]
a.each {|x| x =3}
puts a

def x
end
