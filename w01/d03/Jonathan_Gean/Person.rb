class Person
attr_accessor :name, :age, :favorite_color, :favorite_foods
def initialize
  @name = name
  @age = age
  @favorite_color = favorite_color
  @favorite_foods = ""
end
def favorite_color=(color)
  @favorite_color = color
end
def greet
  puts "Hello"
end
end




