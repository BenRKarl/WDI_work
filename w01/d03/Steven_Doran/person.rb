# Attributes to include:
# define a Person class.
# - name
# - age
# - favorite color
# - favorite foods

# Methods to include:
# - Say "Hello"
# - Change favorite color
# - Read all of the attributes

# Instantiate several objects of type Person

require "pry"

class Person
  # attr_reader :name, :age, :favorite_color, :favorite_foods
  attr_accessor :name, :age, :favorite_color, :favorite_foods
  def initialize(name)
    @name = name
    @age
    @favorite_color
    @favorite_foods = []
  end

  def hello
    puts "Hello there #{name}."
  end

  # def favorite_color=(color)
    # @favorite_color = color
  # end

end
 
pers1 = Person.new("Steven")
pers2 = Person.new("Paul")
pers3 = Person.new("Tim")
pers4 = Person.new("Aldric")

binding.pry

