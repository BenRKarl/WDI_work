class Forest
  attr_accessor :trees

  def initialize
    puts "I have trees! Or do I?"
    @trees = []
  end

end

forest = Forest.new

forest.trees = ['Big tree']

forest2 = Forest.new

forest2.trees = ['No trees here']

forest.trees

forest2.trees
