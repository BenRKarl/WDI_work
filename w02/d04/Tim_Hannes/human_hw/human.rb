#What am i doing wrong??

module SuperHero
  def fly
    'I can fly.'
  end

  def shoot_web
    'I can shoot a web.'
  end

  def jump
    'I can jump really high.'
  end
end
#superhero can fly, shoot_web, jump


class Human
  attr_reader :name :age :gender

  def initialize(name, age, gender)
    @name   = name
    @age    = age
    @gender = gender
  end

end

#Human needs name, age, gender

human = Human.new.extend(shoot_web)
human_2 = Human.new.extend(jump, fly)


#new human obj Josh has a name, age, gender, and can shoot_web.
#new human obj Matt has a name, age, gender, and can jump, and fly.
