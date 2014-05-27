class Rectangle_non
  def initialize(w,h)
    @w = w 
    @h = h 
  end

  def perimiter
    (2 * @w) + (2 * @h)
  end
end

def perimeter_fun(w,h)
  (2 * w) + (2 * h)
end


r = Rectangle_non.new(5,6)
puts r.perimiter


puts perimeter_fun(5,6)