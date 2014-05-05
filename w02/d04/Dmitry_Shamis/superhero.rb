class Human
  def initialize(name, age, gender)
    name = name
    age = age
    gener = gender
  end
end

module Superhero
  def fly
    "I can fly"
  end

  def speed
    "I'm super fast"
  end

  def x_ray
    "I have X-ray vision"
  end

  def strength
    "I totally bench more than you and your whole crew"
  end

  def regnerate
    "I have sophisticated regenerative abilities that allow to me to get into wild gun fights and brawls and walk away without a scratch on me..."
  end
end

dmitry = Human.new('Dmitry', 27, 'male').extend(Superhero).fly
andre = Human.new('Andre', 29, 'male').extend(Superhero).speed
bod = Human.new('Bod', 30, 'male').extend(Superhero).x_ray
lichard = Human.new('Lichard', 45, 'male').extend(Superhero).strength
