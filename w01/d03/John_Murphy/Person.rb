class Person
attr_accessor :name, :age, :favorite_color, :favorite_foods
def initialize(name, age, favorite_color, favorite_foods)
  @name = name
  @age = age
  @favorite_color = favorite_color
  @favorite_foods = favorite_foods
end

def say_hello
  puts "Hello!"
end

def talk
  puts "My name is #{@name}, I am #{@age}, my favorite color is #{favorite_color}, and my favorite things to eat are #{favorite_foods}"
end



def change_favorite_color(color)
  @favorite_color = color

end
end

John = Person.new("John", 27, "Orange", "Apples")
Gary = Person.new("Gary", 87, "blue", "Apples")
Joan = Person.new("Joan", 29, "Yellow", "Apples")
Bessie = Person.new("Bessie", 65, "Magenta", "Apples")
