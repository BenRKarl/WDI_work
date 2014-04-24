
# require 'pry'
class Person

  attr_reader :age

  attr_reader :favorite_foods

  attr_reader :name

  def initialize
    @name = name
    @age = age
  end


  def favorite_color(new_color)
    @favorite_color = new_color
  end

  def hello
    puts "Hellooooooo!"
end

person = Person.new

# binding.pry





# below is instructor example
  class Person

  attr_reader :favorite_color

  def initalize(yourname, yourage)
    @name = yourname
    @age = yourage
    @favorite_color = "chartreuse"
    @favorite_foods = [ "cheese", "sandwiches", "vegetables"]
  end

  def favorite_color=(color)
    @favorite_color = color
 end

   def hello
    puts "hello monkey boy"
  end
end
