class Dog < ActiveRecord::Base
 def to_s
     "#{self.name} (#{self.age})"
  end



end
