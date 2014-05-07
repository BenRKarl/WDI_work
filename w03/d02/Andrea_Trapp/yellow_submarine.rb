class Sailor

  attr_accessor :name

  def initialize(name)
  	@name = name  	
  end

end

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


proto = ['Jeff Winkler','John Murphy','Nessa Nguyen','Jeff Drakos','Rebecca Strong','Gardner Lonsberry' ,'Jonathan Gean','Nathaniel Tuvera','Tim Hannes','Aziz Hasanov','Chris Heuberger','Dmitry Shamis' ,'Corey Leveen','Paul Hiam','Steven Doran','Ben Karl','Kristen Tonga','Wake Lankard','Carlos Pichardo' ,'Paul Gasberra','Andrea Trapp','Heidi Williams-Foy']

# ############################################

# sailors = proto.map { |name| Sailor.new(name) }
# #sailors.each { |sailor| puts sailor.name }

# submarine = Submarine.new
# crew = sailors.each { |sailor| submarine.accept_sailor(sailor) }
# crew.each { |member| puts member.name }

# goes_for_torpedo_ride = submarine.torpedo_sailor
# puts "Sailor '#{goes_for_torpedo_ride.name}' goes for a torpedo ride...!!!"
# # crew.each { |member| puts member.name }

# ############################################

submarine = Submarine.new
proto.each do |name|
	sailor = Sailor.new(name)
	submarine.accept(sailor)
end

############################################
