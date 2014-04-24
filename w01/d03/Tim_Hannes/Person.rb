class Person
  attr_accessor :favorite_color, :favorite_food
  attr_reader :name, :age

  def initialize (name , age , favorite_color , favorite_food)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_food = favorite_food
  end

  def hello
    puts "hello"
  end

  def change_color=(color)
    @favorite_color = color
  end

  def read_all_attributes
    @name
    @age
    @favorite_color
    @favorite_food
  end
end

man = Person.new("Josh", 25 , "salmon" , "tacos")
