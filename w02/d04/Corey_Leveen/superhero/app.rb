class Human
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end
end

module Superhero
  def fly
    "Soar above the city streets"
  end

  def shoot_web
    "Shoots a spider-man-esque web"
  end

  def break_building
    "Breaks a building in two"
  end

  def teleport
    "eliminate distance between you and your destination"
  end
end

Georgia = Human.new("Georgia", 23, "Female")
Laricheard = Human.new("Laricheard", 30, "Male")
Dayv = Human.new("Dayv", 22, "Male")
Virginia = Human.new("Virginia", 41, "Female")

Georgia.extend(Superhero)
Georgia.shoot_web

