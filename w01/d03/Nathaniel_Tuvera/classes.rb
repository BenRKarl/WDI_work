class Forest
    attr_accessor :trees
    def initialize
        @trees = []
    end
end

forest = Forest.new # => #<Forest:0x007f8ab504b6d0>
first.trees = ['Big tree']

forest2 = Forest.new
forest2.trees = ['No trees here']

forest.trees
forest2.trees