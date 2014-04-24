require 'pry'
class Person
  attr_accessor :fav_color

  attr_accessor :fav_food

  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
    @fav_color = "green"
    @fav_food = "pizza"
  end

  def hello
    puts "#{@name}: Hello!"
  end

  def name
    puts @name
  end

  def age
    puts @age
  end

  def fav_color
    @fav_color
  end

  # def change_fav_color(value)
  #   @fav_color = value
  # end

  # def fav_food
  #   @fav_food
  # end

  # def change_fav_food(value)
  #   @fav_food = value
  # end

end

# me = Person.new

binding.pry
