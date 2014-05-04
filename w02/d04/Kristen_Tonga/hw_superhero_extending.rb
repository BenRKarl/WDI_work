class Human

  def initiate
  end

  def eat
    puts "Sometimes, I consume food so my body can function."
  end

  def fuck
    puts "I prefer making love."
  end

  def sleep
    puts "Life is just a waking dream."
    puts "And most of us are barely awake anyway."
  end
end

module Superhero
  def time_travel
    puts "I'm like the doctor! Um... Who knows what year this is?"
  end
  def psychic_powers
    puts "I can read your thoughts!"
  end
  def super_strength
    puts "Garrrrrr!!!! GAARRRRRR!!!! I'll squish my enemies like they were butterfly wings!"
  end
  def apperate
    puts "I can disapeer here and instantaniously appear elsewhere!"
  end
  def wisdom
    puts "Maybe not a attribute of all superheros, but it should be!"
  end
  def morals
    puts "With great power comes great responsibility."
  end
end

anna_bananna = Human.new.extend(Superhero)
  anna_bananna.wisdom
  anna_bananna.morals
  anna_bananna.super_strength

christopher_robin = Human.new.extend(Superhero)
  christopher_robin.time_travel


