class Submarine
  attr_reader :sailors

  def initialize(color='yellow')
    @color = color
    @sailors = []
  end

  def accept_sailor(sailor)
    @sailors << sailor
  end

  def torpedo_sailor
    @sailors.delete(@sailors.sample)
  end
end
