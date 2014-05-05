
module Superhero
  def fly
    "I can fly"
  end
end
module Web
  include
  def shoot_web
    "I can shoot web"
  end

  end

end
class Human
  include Web
  def hair
    "I have brown hair"
  end
  def age
    "I am 25"
  end
  def gender
    "I am a male"
  end

end
class Jeff
    include Superhero
    include Web
def student
  "I am a student"
end
end
