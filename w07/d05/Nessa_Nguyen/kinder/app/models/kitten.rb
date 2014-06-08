class Kitten < ActiveRecord::Base
  validates :url, uniqueness: true
  
  def self.random
    rand = rand(200..400)
    url = "http://placekitten.com/#{rand}/#{rand}"
  end

end
