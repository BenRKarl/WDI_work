class Submarine
  attr_accessor :color, :sailors

  def initialize (color="yellow")
    @color    = color
    @sailors  = [] #Array.new
  end

  def accept_sailor(sailor)
    #Puts sailor OBJ in array of sailors
    @sailors << sailor #@sailors.push(sailor)
  end

  def torpedo_sailor
    #Takes random sailor from array of sailors
    @sailors.delete(@sailors.sample)
    #OR rider = @sailors.sample THEN @sailors.delete(rider)
    #OR @sailors.shuffle!.pop
  end
end
