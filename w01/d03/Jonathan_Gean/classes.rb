#Object, message, keyword
class Forest
  attr_accessor :trees
  def initialize
    @tree = []
  end
end

forest = Forest.new
forest.trees=['Big Tree', 'Small tree']

forest2 = Forest.new
forest2.trees = ['No trees here']

forest.trees
forest2.trees

