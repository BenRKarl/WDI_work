=begin
Define a Person class.

Attributes to include:
- name
- age
- favorite color
- favorite foods

Methods to include:
- Say "Hello"
- Change favorite color
- Read all of the attributes

Instantiate several objects of type Person
=end

#MY CODE
class Person
  attr_accessor :favorite_color, :name

  def initialize(name, age, favorite_color, favorite_foods)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_foods = favorite_foods
  end

  def say_hello
    puts "Hello"
  end

  def about_you
    puts @name
    puts @age
    puts @favorite_color
    puts @favorite_foods
  end
end

bob = Person.new("Bob", 32, "blue", "pizzas")
jorge = Person.new("Jorge", 17, "red", "linguine")
mike = Person.new("Mike", 3, "green", "cat")
james = Person.new("James", 90, "blue", "ice cream")

bob.about_you
jorge.about_you
mike.about_you
puts james.favorite_color
puts james.favorite_color ="orange"
puts james.favorite_color
puts bob.name

=begin
#CLASS CODE
class Person
  attr_accessor :favorite_color

  def initialize
    @name = "Andre 1000"
    age = 13
    favorite_color = "chartreuse"
    favorite_foods = ["pizza", "beer", "tacos", "fish sticks"]
  end

  def favorite_color(color)
    @favorite_colo = color
  end

  def hello
    puts "hellowies"
  end

end
=end

