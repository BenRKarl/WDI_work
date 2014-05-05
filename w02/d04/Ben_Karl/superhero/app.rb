
class Human
  def initialize(name, age, gender)
  @name = name
  @age = age
  @gender = gender
  end
end

module SuperHero
def fly
  "I'm flying!"
end

def shoot_web
  "I'm shooting webs!"
end

def laser_vision
  "I'm shooting fucking laser out of my eyes!!"
end
end

ben = Human.new("Ben", 29, "Male")
george = Human.new("George", 22, "Male")
susie = Human.new("Susie", 34, "Female")
superman = Human.new("Clark", 150, "Male").extend(SuperHero)


