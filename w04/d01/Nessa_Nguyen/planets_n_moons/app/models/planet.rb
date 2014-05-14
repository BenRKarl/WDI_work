class Planet < ActiveRecord::Base
  has_many :moons

  def to_s  
    planet = Planet.create({name: name, life: life})
    planet.moons << Moon.new
    if planet.life == true
      life_form = ""
    else
      life_form = "not "
    end    

    "#{planet.name} is a planet with #{ planet.moons.length } moon(s), #{life_form}capable of sustaining life."    
  end
end
