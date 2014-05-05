module Superhero_mode
  def activate_powers
    "... and a super hero."
  end
end

module Elasticity
  def stretch
    "and I can stretch seriously far, seriously."
  end
end

module Telekenesis
  def forcefield
    "I can also put up forcefields to block people out... and y'know, just ignore you"
  end
end

module Invincible
  def healingfactor
    "I can't die or age, unless you cut my head off."
  end
end

module Superspeed
  def speedup
    "Just try to keep up with me..."
  end
end

module NotSoSuper
  def ummm
    "I can read street signs better than anyone else!"
  end
end

module Inspire
  def omg
    "Inspired millions... and I still do today."
  end
end

class Human
  def initialize(name, age, gender, profession)
  @name      = name
  @age       = age
  @gender    = gender
  @profesion = profession
  end

  def act_normal
    "I'm just your everyday average citizen..."
  end
end


class Mutant < Human
  def mutate
    "that has a genetic mutation which lets me..."
  end
end

class Cyborg < Human
  def tech
    "that has cynbernetics which lets me..."
  end
end

class ChosenOne < Human
  def chosen
    "that's the 'Chosen One' and the powers that be let me..."
  end
end



Psylocke = Mutant.new("Besty Braddock", 30, "female", "Agent").extend(Telekenesis, Superspeed)
MrFantastic = Human.new("Reed Richards", 40, "male", "Scientist").extend(Stretch)
CordeliaChase = ChosenOne.new("Charisma Carpenter", 43, "female", "secratary").extend(SuperStrength, Telekenesis, Invincible, NotSoSuper)
StanLee = Human.new("Stan Lee", 91, "male", "comic book artist").extend(Inspire)

