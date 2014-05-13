class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    "#{Planet.name} is a planet with a mass of #{Planet.mass}, a diameter of #{Planet.diameter}, and its life status is #{Planet.life}. It has #{Planet[Moon.planet_id]} moons."
  end
end
