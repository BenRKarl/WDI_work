class Kitten < ActiveRecord::Base

  def url
    self.width = rand(500)
    self.height = rand(500)
    "http://placekitten.com/#{ self.width }/#{ self.height }"
  end

end
