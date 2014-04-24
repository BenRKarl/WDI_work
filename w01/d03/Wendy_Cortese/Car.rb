require 'pry'
class Car
  attr_reader :upholstery

  attr_reader :top_speed

  def initialize
    @num_wheels = 4
    @upholstery = "vinyl"
    @top_speed = 70
end

  def num_wheels
    @num_wheels
  end

  def num_wheels(value)
    @num_wheels = value
  end

  def set_number_of_wheels(value)
    puts 'hello'
  end

  def reupholster(fabric)
    @upholstery = fabric
  end

  def

end

car = Car.new

binding.pry
