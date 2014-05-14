class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    life_variable = if self.life
                      "capable"
                    else
                      "incapable"
                    end
    "#{self.name} is a planet with #{ self.moons.count } moon(s), #{ life_variable } of sustaining life."
  end

end
