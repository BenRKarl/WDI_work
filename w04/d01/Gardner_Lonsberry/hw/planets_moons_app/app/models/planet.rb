class Planet < ActiveRecord::Base
  has_many :moons

  def has_life
    if self.life == true
      l = "has"
     else
      l = "doesnt have" 
    end
  end  

  def to_s
    name = self.name
    moon_count = self.count.moons
    "#{self.name} is a planet with #{moon_count} and #{l} life."
  end
end
