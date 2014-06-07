class Book < ActiveRecord::Base
  def to_s
    "#{self.title} by #{self.author}"
  end
end
