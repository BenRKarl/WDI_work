
class Person
  attr_reader :age, :favorite_food
  attr_accessor :favorite_color, :name

  def initialize(name, age, favorite_color, favorite_food)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_food = favorite_food
  end
  def name=(name)
    puts "hello"
  end

def about_me
  puts @name
  puts @age
  puts @favorite_color
  puts @favorite_food
end
end


kev = Person.new("kev", 51, "blue", "pizza")
mose = Person.new("mose", 53, "pink", "anchovies")
luke = Person.new("luke", 54, "green", "sandwich")
paul = Person.new("paul", 56, "yellow", "bacon")


kev.about_me
mose.about_me
luke.about_me
paul.about_me
puts kev.name
