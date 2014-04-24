require 'pry'
class Car
  def initialize
    @num_wheels = 4
  end

  def num_wheels
    @num_wheels
  end

  def num_wheels=(value)
    @num_wheels=value
  end
end

car = Car.new

binding.pry

