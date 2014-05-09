class Kitten
  attr_reader :url
  def initialize
    @url = "http://placekitten.com/#{rand(300..600)}/#{rand(300..600)}"
  end
end
