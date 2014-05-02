module Superhero
  def shoot_web
    "Shoots a web."
  end
  def fly
    "Flies away."
  end
  def invisible
    "Disappears before your eyes."
  end
  def claws
    "I'm Wolverine!"
  end
  def bjork
    ["Singing is like a celebration of oxygen.", "Football is a fertility festival. Eleven sprem trying to get into the egg. Ifeel sorry for the goalkeeper.", "People are always asking me about eskimos, but there are no eskimos in Iceland.", "Come on, I'm from Iceland; I don't do hip-hop.", "I've been traveling in Guatemala in the rainforest, and here all these houses are made of sticks. It seems so easy to make one.", "I'm a grateful... grapefruit."].sample
  end
  end

  class Human
    def initialize(name, age, gender)
      @name = name
      @age= age
      @gender = gender
    end
  end



Archie = Human.new("Archie", 17, "male").extend(Superhero)
Betty = Human.new("Betty", 16, "female").extend(Superhero)
Jughead = Human.new("Jughead", 17, "male").extend(Superhero)
Veronica = Human.new("Jughead", 17, "female").extend(Superhero)


