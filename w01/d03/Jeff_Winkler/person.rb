

class Person
  attr_accessor :color, :foods
  attr_reader :name, :age
  def initialize(name, age, color, foods)
    @name = name
    @age = age
    @color = color
    @foods = foods
  end
  def read_all
    puts @name
    puts @age
    puts @color
    puts @foods
  end
  def hello
    puts "Hello"
  end
  def color= new_color
    @color = new_color
  end
  def chg_color
    puts "Enter new color"
    new_color = gets.chomp
    @color = new_color
  end
end


me = Person.new("Jeff", 40, "blue", ["pizza", "tacos"])
me.read_all
me.hello
me.color = "green"
me.read_all

wife = Person.new("Anne-Laure", 40, "white", ["yogurt", "chia"])
daughter = Person.new("Zoe", 6, "blue", ["couscous", "ice cream"])
wife.read_all
daughter.read_all
puts nil


