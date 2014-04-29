=begin
#IN THIS ONE, THE NAME DEFAULTS TO BILBO, BUT CAN BE MODIFIED
class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :favorite_color
  attr_accessor :favorite_foods

  def initialize(name="Bilbo")
    @name = name
    @age = 111
    @favorite_color = "green on yellow, or yellow on green"
    @favorite_foods = "seed cakes"
  end
end

#IN THIS ONE, EVERYONE IS BILBO
class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :favorite_color
  attr_accessor :favorite_foods

  def initialize
    @name = "Bilbo"
    @age = 111
    @favorite_color = "green on yellow, or yellow on green"
    @favorite_foods = "seed cakes"
  end
end

#IN THIS ONE, EACH PERSON GETS THEIR OWN NAME, PUT IN BY: Person.new("Kristen, 23, rainbow, squa_candy")
class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :favorite_color
  attr_accessor :favorite_foods

  def initialize(name, age, favorite_color, favorite_foods)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_foods = favorite_foods
  end
end
=end

#HERE'S THE CAR!!

require "pry"
class Car
  attr_reader :upholstery
    # AUTOMATICALLY DOES:
    # def upholstery
    #    @upholstery
    # end
  attr_accessor :top_speed
  attr_accessor :passenger
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
    @passenger = []
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

  def accept_passanger(passenger)
    @passenger.push(passenger)
  end

end

car = Car.new
binding.pry
