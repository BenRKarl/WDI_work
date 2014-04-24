class Forest
	attr_accessor :trees
	def initialize
		@trees = []
		#puts "I have trees!"
	end
end

forest = Forest.new
#forest2 = Forest.initialize

forest.trees = ['big tree', 'small tree']
forest2 = Forest.new
forest2.trees = ['no trees here']

forest.trees
forest2.trees