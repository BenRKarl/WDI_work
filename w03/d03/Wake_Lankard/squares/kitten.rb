class Kitten
  def initialize
    @height = rand(400)+50
    @width = rand(400)+50
  end

  def to_s
    "http://placekitten.com/#{@height}/#{@width}"
  end

  def random
    @height = rand(500)+50
    @width = rand(500)+50
    "http://placekitten.com/#{@height}/#{@width}"
  end
end
