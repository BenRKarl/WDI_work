class Submarine
  attr_accessor
  def initialize(color="yellow")
   @color = color
   @sailor_array = []
  end

  def accept_sailor(sailor)
    @sailor_array << sailor
  end

  def torpedo_sailor
    @sailor_array.delete(@sailor_array.sample)
  end

end

