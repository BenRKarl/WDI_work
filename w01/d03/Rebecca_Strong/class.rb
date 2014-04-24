class Forest
  attr_accessor :trees

  def initialize
    @trees = []
    end

    def trees
    @trees
    end

    def trees=something
    @trees=something
end

    def to_s
    "An Awesome Forest"
end
end

forest = Forest.new
forest.trees = ['Big tree', 'small tree']

forest2 = Forest.new
forest2.trees = ['No trees here']

forest.trees
forest2.trees

f = forest.new
f.inspect

class Ferrari
    attr_reader :tires
    def initialize
        @tires = 'stock'
    end

    def tires
        @tires
    end
end
f = Ferrari.new
f.tires = "slick"

    attr_accessosr "tires
    def initialize@tires = 'stock'
    end
end
