class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    name = self.name
    moon_count = self.moons.count 
    life_text= "incapable"
    life_text = "capable" if self.life

    "#{self.name} is a planet with #{ moon_count } moon(s), and is #{ life_text } of supporting life."
  end
end
