require "pry"
class Car
  attr_reader :upholstery
    # AUTOMATICALLY DOES:
    # def upholstery
    #    @upholstery
    # end
  attr_accessor :top_speed
    # def top_speed
    #  @top_speed
    # end
    # def top_speed=(value)
    #   @top_speed = value
    # end

  def initialize
    @num_wheels = 4
    @upholstery = "vinyl"
    @top_speed = 70
  end

  def num_wheels
    @num_wheels
  end

  def num_wheels=(value)
    @num_wheels = value
    #puts "hello"
  end

  def reupholster(fabric, value_of_car)
    @upholstery = fabric
  end

end

car = Car.new
binding.pry
