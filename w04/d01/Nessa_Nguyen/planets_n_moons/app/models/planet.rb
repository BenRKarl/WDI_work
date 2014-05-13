class Planet < ActiveRecord::Base
  has_many :moons

  def to_s  
    planet = Planet.create({name: name, life: life})
    if self.life == true
      life_form = ""
    else
      life_form = "not "
    end    

    "#{self.name} is a planet with #{ self.moons.length } moon(s), #{life_form}capable of sustaining life."    
  end
end
