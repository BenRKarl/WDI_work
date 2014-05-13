class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    @moon = Moon.all
    puts "Planet earth has <%= @moon.count %>moons"
  end
end
