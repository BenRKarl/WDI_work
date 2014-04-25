class Calculator
  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def divide (x, y)
    x.to_f / y.to_f
  end

  def multiply (x, y)
    x * y
  end

  def div_zero (x)
    if x / 0
      return NaN
  end
end
