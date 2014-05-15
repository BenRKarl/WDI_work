class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    moon_num = moons.length.to_s
    life_string = ""
    if self.life == true
      life_string = "capable of sustaining life."
    else
      life_string = "incapable of sustaining life."
    end
    "#{name} is a planet with #{moon_num} moon(s), " + life_string
  end
end
