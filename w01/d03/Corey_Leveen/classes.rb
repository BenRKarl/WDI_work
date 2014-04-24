#seeing_is_believing install this gem
#every time you initialize a class, the code in initialize will run.
class Forest
  attr_accessor :trees
  def initialize
      @trees = []
  end
end

forest = Forest.new
forest2 = Forest.new

forest.trees = ["Big tree"]

puts forest.trees
