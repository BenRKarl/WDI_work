require 'pry'
class Car
  attr_reader :upholstery, :passengers
  # def upholstery
  #   @upholstery
  # end

  attr_accessor :top_speed
  # def top_speed
  #   @top_speed
  # end
  # def top_speed=(value)
  #   @top_speed = value
  # end

  def initialize
    @num_wheels = 4
    @upholstery = "vinyl"
    @top_speed  = 70
    @passengers = []
  end

  def num_wheels
    @num_wheels
  end

  def accept_passenger(passenger)
    @passengers.push(passenger)
  end
  def num_wheels=(value)    # def method=   allows to change value
    @num_wheels = value
  end

  def reupholster(fabric)
    @upholstery = fabric
  end

  def honk
    puts "HAAAAAAAAOOOOOOWNK"
  end

end

#car = Car.new
