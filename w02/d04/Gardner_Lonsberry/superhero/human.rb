class Human
  def initialize(name, age, gender)
  	@name = name
    @age = age
    @gender = gender
  "I can walk"
end


module Superhero

  def fly
	"I can fly"
  end

  def xray
  	"They live"
  end

  def stop_bullets
  	"Bullets don't hurt me"
  end

end
end

Mike = Human.new('Mike', 30, "male").extend(Superhero).stop_bullets
Jill = Human.new('Jill', 15, "female").extend(Superhero).xray
Archie = Human.new("Archie", 17, "male").extend(Superhero).fly






