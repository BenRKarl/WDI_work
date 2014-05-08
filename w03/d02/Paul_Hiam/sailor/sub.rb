class Submarine
	attr_accessor :sailors, :color

	def initialize(color='yellow')
	  @color = color
      @sailors = []
	end

  def accept_sailor(sailor)
  	@sailors << sailor

  end

  def torpedo_sailor
  	rand_sail = @sailors.sample
  	@sailors.delete(rand_sail)
  	puts "Enjoy the concert #{rand_sail.name}! And do hold fast the explosives payload cap 'til shore!"
  	@sailors
  end
end