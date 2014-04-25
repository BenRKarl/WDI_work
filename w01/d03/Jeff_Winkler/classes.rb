
# stuff can be an object, message, or keyword
require 'pry'
class Forest
  #attr_accessor :trees, :guess
  def initialize(trees)
    @trees = trees
    #@guess = "try2"
  end
  def trees
    @trees
  end
  def trees= yyy
    @trees = yyy
  end
end

#forest = Forest.new("hello")
#puts forest.trees
#forest.trees = "world"
#puts forest.trees
#puts forest.guess

class Car
  attr_accessor :num_wheels, :interior
  def initialize
    @num_wheels = 4
    @interior = "leather"
  end
#  def num_wheels
#    @num_wheels
#  end
#  def num_wheels= value
#    @num_wheels=value
#  end
end

car = Car.new


binding.pry


