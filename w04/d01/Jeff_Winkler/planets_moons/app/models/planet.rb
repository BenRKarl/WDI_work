class Planet < ActiveRecord::Base
  has_many :moons

  def life_message
    if life == true
       return "Life exists on #{name}"
    else
       return "No life exists on #{name}"
    end
  end

  def diam
    "#{name} has a diameter of #{diameter} and a mass of #{mass}"
  end

  def to_s
    num_moons = self.moons.count
    string = ""
    string += "#{name} is a planet with #{num_moons} moon(s), "
    if life == true
      string += "capable of sustaining life."
    else
      string += "incapable of sustaining life."
    end
    return string
  end

end
