class Person
attr_reader :name, :age
attr_accessor :favorite_color, :favorite_foods
  def initialize(name, age, favorite_color, favorite_foods)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_foods = favorite_foods
  end

  def hello
    puts "Hello"
  end

  def favorite_color=(color)
    @favorite_color = color
  end

  def readall
   puts name
   puts age
   puts favorite_color
   puts favorite_foods
  end

end

guy = Person.new("Nate", 29, "blue", "bacon")
dude = Person.new("Eric", 30, "red", "tacos")
bro = Person.new("Kathew", 22, "iridium", "steak")
man = Person.new("Neel", 28, "green", "not meat")
