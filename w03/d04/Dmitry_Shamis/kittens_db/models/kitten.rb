class Kitten < ActiveRecord::Base
  def url
    "http://placekitten.com/#{self.width}/#{self.length}"
  end
end
