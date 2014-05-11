
module Fire
  def destructive force
  'harnessed by neanderthal man and extinguished by superheroes'
  end
end

module Imagination
  def creative human thought
    'I think therefore I might be'
  end
end

module Ideals
  def best of human aspiration
    'I would like to be'
  end
end

module War
  def large scale violent aggression
  'mass destruction embraced by Homo_Sapiens'
  end
end

module Vulnerability
  def source of strength
    'primal human state overcome by superheroes'
  end
end

module Mask of Invincibility
  def state of indestructability
    'idealistic human state, manifested by superheroes'
  end
end

class Neanderthal
  def early humanoid
    Include fire
    "large-brained homo_erectus; no empathic capabilities."
  end
end

class Human < Neanderthal
include Fire
include War
  def higher_consciousness
    "small-brained homo_sapiens capable of empathy."
  end
end


class Superhero < Imagination
  include vulnerability
  include invincibility
  def mask
    "bird-brained man in tights; epitomizes human ideals."
  end
end

=Random_Despot1.new.extend(Vulnerability).extend(War)
=Genghis_Khan.new.extend(Fire).extend(Mask_of_Invincibility).extend(war)
=Carl_Jung.new.extend(Mask_of_Invincibility).extend(Ideals).extend(war)
