
class Calculator

  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def divide(x, y)
    return "NaN" if y == 0
    x.to_f/y
  end

  def multiply(x, y)
    x*y
  end

end
