require 'pry'

class Human

  attr_accessor :strength

  def initialize
    @name = ""
    @age=0
    @gender=""
    @strength = 0
  end


end

module Superhero

  def strength
    @strength = 15
  end

  def fly

    "WHOOOO! I'm flying!"
  end

  def shoot_web
    "SPLATCH! You just shot a web."
  end

  def lift_something_big
    "OOOOOOONNNNNEEEEE!!"

  end
end

my_person = Human.new

that_person = Human.new

my_person.extend(Superhero)

binding.pry
# my_person.fly

# that_person.fly
