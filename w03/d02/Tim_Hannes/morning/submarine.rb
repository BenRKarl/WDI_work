class Submarine
  attr_reader :sailors
  def initialize(color="yellow") #default of yellow
    @color    = color
    @sailors  = [] #Array.new is the same.
  end

  def accept_sailor(sailor) #has a sailor object already
    @sailors << sailor
    #@sailors.push(sailor)   Same thing.
  end

  def torpedo_sailor
    @sailors.shuffle!.pop
  end

end

