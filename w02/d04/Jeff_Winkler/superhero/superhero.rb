
class Human
  attr_accessor :name, :age
  def initialize(name,age)
    @name = name
    @age = age
  end
end

module Superhero
  def fly
    "I can fly"
  end

  def invisible
    "I can become invisible"
  end

  def silversurf
    "I can silver surf"
  end
end


civilian1 = Human.new("John Doe", 30)
civilian2 = Human.new("Jane Doe", 30)

shero1 = Human.new("Clark Kent", 30)
shero2 = Human.new("Peter Parker", 20).extend(Superhero)

shero1.extend(Superhero)

puts civilian1.name
puts shero1.fly
puts shero2.silversurf





