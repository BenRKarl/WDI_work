class Book < ActiveRecord::Base
 
  def to_s    
    "#{self.title}, written by #{self.author}"
  end

end
