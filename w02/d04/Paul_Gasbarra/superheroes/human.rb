class Human

  def initialize (name, gender, age, eyes, hair, hometown)
    @name = name
    @gender = gender
    @age = age
    @hair = hair
    @hometown = hometown
  end
end

module Superhuman_strength
  def strength
    'super strength'
  end
end

module Ninjitsu
  def ninjitsu
    'Trained in the way of the assassian'
  end
end

module Echo_location
  def echo_location
    'ping...ping...ping'
  end
end

module Billions_of_dollars
    'I am the 1 percent'
end

module Invisible_lasso
  def truth_lasso
    'You will tell all.'
  end
end

module Acrobatic_ability
  def acrobatic_ability
    'Dexterity ++'
  end
end

batman = Human.new("Wayne", "Male", 32, "blue", "black","Gotham City").extend(Billions_of_dollars, Ninjitsu, Acrobatic_ability)
puts batman.inspect

daredevil = Human.new("Murdock", "Male", 29, "blue", "red", "Hell's Kitchen").extend(Echo_location, Ninjitsu, Acrobatic_ability)
puts daredevil.inspect

