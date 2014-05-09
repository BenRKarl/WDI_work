require 'pry'

class Person

  attr_reader :name, :age, :favoite_food
  attr_accessor :favorite_color

  def initialize(name, age)
    @name = name
    @age = age
    @favorite_color
    @favorite_food
  end

  def say(val)
    puts val
  end


end

ralph = Person.new("Ralph", 20)
steve = Person.new("Steve", 56)
kate  = Person.new("Kate", 33)

 binding.pry