class Kitten < ActiveRecord::Base

  def url
    "http://placekitten.com/g/#{ self.width }/#{ self.height }"
  end

end
