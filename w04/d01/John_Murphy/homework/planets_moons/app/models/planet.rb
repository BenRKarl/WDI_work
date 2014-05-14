class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    output = "This is #{self.name}."
    if self.life
      output += " It is capable of sustaining life."
    else
      output += " It is incapable of sustaining life."
    end

    output += " It has #{self.moons.count} moon(s)."

    output
  end

end
