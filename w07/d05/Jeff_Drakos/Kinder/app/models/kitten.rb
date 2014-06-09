class Kitten < ActiveRecord::Base
  validates :url, uniqueness: true

  def self.random
    rand = rand(100..300)
    url = "http://placekitten.com/#{rand}/#{rand}"
  end

end
