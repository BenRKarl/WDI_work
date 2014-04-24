require 'pry'
class Car

  def initialize
    @num_wheels = 4
  end

  def num_wheels
    @num_wheels
  end
  #lets you read the value of num_wheels

  def num_wheels=(value)
    @num_wheels = value
  end
  #lets you set the value of num_wheels using my_car.num_wheels = 10

  def set_number_of_wheels(value)
    puts "hello"
  end
  #lets you set the value of num_wheels using my_car.num_wheels(10)
end


my_car = Car.new
my_car.num_wheels = 10
puts num_wheels
# num_wheels= is used so that you can set num_wheels using the = instead of
# my_car.num_wheels(10)
