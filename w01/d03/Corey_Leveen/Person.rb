class Person
  attr_reader :name, :age, :favorite_color, :favorite_food

  def initialize(name, age, favorite_color, favorite_food)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_food = favorite_food
  end

  def hello
    puts "Hello!"
  end

  def change_favorite_color=(new_color)
    @favorite_color = new_color
  end

  def everything
    puts @name
    puts @age
    puts @favorite_color
    puts @favorite_food
  end
end

new_person = Person.new("Corey", 23, "Blue", "Pizza")
puts new_person.everything
