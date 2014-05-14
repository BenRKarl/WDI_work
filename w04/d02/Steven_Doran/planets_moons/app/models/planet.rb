class Planet < ActiveRecord::Base
  has_many :moons

  # def self.to_s
  # moon_num = self.moons.count
  # "Earth is a planet with #{moon_num} moon(s), capable of sustaining life."
  # end

end
