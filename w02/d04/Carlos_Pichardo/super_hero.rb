module Superhero
  def fly
    'power to fly'
  end 

end 

class Human
  
  def initialize(name, age, gender)
  @name = name
  @age = age
  @gender = gender
  end 
  
end 



super_man = Human.new("Superman", 30, "male")
super_man.extend(Superhero)
