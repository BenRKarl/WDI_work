class Submarine


  def initialize (color='yellow', sailors)
    @color = color
    @sailors = []
  end

  def accept_sailor(sailor)
    @sailors << sailor
  end

  def torpedo_sailor
    rider = @sailors.sample
    @sailors.delete(rider)
  end

end
