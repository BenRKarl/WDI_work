class Person

attr_reader :name, :age, :favorite_color, :favorite_foods

attr_accessor :favorite_color


def initialize
  @name="Caravaggio"
  @age = 36
  @favorite_color = "black"
  @favorite_foods = "grapes"
end



  def speak
    puts "buon giorno!"
  end

  def age=(value)
    @age=value
  end

  def favorite_color=(color)
    @favorite_color=color
  end

  def favorite_foods=(grapes)
    @favorite_foods=grapes
  end
end
