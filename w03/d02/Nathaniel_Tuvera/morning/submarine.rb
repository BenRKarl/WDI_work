class Submarine
  attr_accessor :color :sailors

  def initialize(color='yellow')
    @color         = color
    @sailors   = []         #Array.new is same.
  end

  def accept_sailor(sailor)
    @sailors << sailor
    #sailors_arr.push(sailor)
  end

  def torpedo_sailor
    projectile = @sailors.shuffle!.pop
  end

end
