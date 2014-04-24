require 'pry'
class Car
  attr_reader :upholstery
  #def upholstery
    #@upholstery
  #end
  #the code on line 3 automates the code on lines 4-6

  attr_accessor :top_speed
 # def top_speed
  #  @top_speed
 # end
 # def top_speed=(value)
   # @top_speed = value
  #end


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
  end

  def set_number_of_wheels(value)
    puts "hello"
  end

  def reupholster(fabric)
    @num_wheels = value
  end

  def honk
    puts "AWWUUUGAH"
  end
end

car = Car.new

binding.pry
