class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    @name = planet.name
    return "#{@name} is a planet with 1 moon, capable of sustaining life."
  end
end
