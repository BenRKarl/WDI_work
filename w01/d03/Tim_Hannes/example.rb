class Person
  attr_accessor :favorite_color
  attr_reader :name

  def initialize(name , age)
    @name = name
    @age = age
    @favorite_color = "chartreuse"
    @favorite_foods = ["coconut oil", "grass fed ghee", "pastured lamb", "tumeric"]
  end

  def hello
    puts "hello"
  end

  def favorite_color=(color)
    @favorite_color = color
  end

  def read_all_attributes
    @name
    @age
    @favorite_color
    @favorite_foods
  end
end
