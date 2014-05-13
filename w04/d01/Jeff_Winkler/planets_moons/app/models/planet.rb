class Planet < ActiveRecord::Base
  has_many :moons

  def life_message
    if self.life == true
       return "Life exists on #{name}"
    else
       return "No life exists on #{name}"
    end
  end

  def diam
    "#{name} has a diameter of #{diameter} and a mass of #{mass}"
  end

end
