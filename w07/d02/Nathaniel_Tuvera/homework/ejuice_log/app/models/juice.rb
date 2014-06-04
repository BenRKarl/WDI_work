class Juice < ActiveRecord::Base

  def to_s
    "#{self.name}: type: #{self.flavor}, rating: #{self.rating}"
  end
end
