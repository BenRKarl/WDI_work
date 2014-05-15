class Planet < ActiveRecord::Base
  has_many :moons

  def to_s
    @moon = Moon.all
    puts "Planet has <%= moon_arr.length %> number(s) of moons."
  end
end
