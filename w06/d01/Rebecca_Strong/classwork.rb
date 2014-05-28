class Rectangle


  def initialize (w, l)
    @w = w
    @l = l

def perimeter(rect)
  (rect. l x 2) + (rect. w x 2)
end

def perimeter(rect)#(w,h)



end

# non-functional
class Rectangle

  def initialize(w, h)
  @w = w
  @l = l
  end

  def perimeter
    @rect ||= 2@h +2@w
  end
end
# and functional (bcs it will always return the same result whether you pass in 2 and 6 for w and h, or 3 and 4 or any numbers; doesnt matter if it's in the class or not)
class Rectangle

  def initialize(w, h)
  @w = w
  @h = h
  end

  def perimeter (w, h)
    (2 * w) + (2 * h)
  end
end








