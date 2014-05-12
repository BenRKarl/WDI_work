class Kitten

  attr_reader :image_url
  
  def initialize
    @image_url = "http://placekitten.com/#{rand(100..500)}/#{rand(100..500)}"
  end

end