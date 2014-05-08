class Submarine

	attr_accessor :sailors, :random_sailor

  def initialize(color = "yellow")
  	@color = color
  	@sailors = []  # @sailors.push sailor
  end

  def accept_sailor(sailor)
  	@sailors << sailor
  end

  def torpedo_sailor
  	@random_sailor = @sailors.sample  	
  	@sailors.delete(@random_sailor)  	
  end

  # def torpedo_sailor
  # 	@sailors.shuffle!.pop
  # end

end