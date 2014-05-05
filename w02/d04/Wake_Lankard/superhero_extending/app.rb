class Human
  def initialize 
    @gender = ""
    @height = ""
    @wieght = ""
    @eye_color = ""
    @hair_color = ""
  end

  def breathe
    "In through the nose, out through the mouth."
  end

  def swim
    "splishy splash"
  end

  def climb
    "up and up"
  end

  def cook
    "hmmm.  Can't wait"
  end

  def eat
    "That was good."
    weight += 1
  end

  def drink
    "slurp"
  end
end


module Superhero
  def fly
    "up up and away."
  end


  def talk_to_fish
    "glub glub"
  end
 
  def super_stretch
    "boing"
  end

  def make_anything_with_ring
    "It's green."
  end
end


wake = Human.new 
mike = Human.new
zappo_guy = Human.new
zappo_guy.extend(Superhero)
mistress_steel = Human.new
mistress_steel.extend(Superhero)
captian_fiz = Human.new
captian_fiz.extend(Superhero)
the_sportser = Human.new
the_sportser.extend(Superhero)

puts wake.drink
puts zappo_guy.fly

