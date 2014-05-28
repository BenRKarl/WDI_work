require 'pry'

def perimeter(length, width)
  length*2 + width*2
end

# functional
class Rect

  def initialize
    @length = 4
    @width = 2
  end

  def perimeter
    @length*2 + @width*2
  end


end

# non-functional

class Rect

  def initialize
    @length = 4
    @width = 2
    @perimeter = ""
  end

  def perimeter
    @perimeter = @length*2 + @width*2
  end
end


binding.pry
