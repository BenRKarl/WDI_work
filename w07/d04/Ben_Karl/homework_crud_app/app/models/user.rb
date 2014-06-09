class User < ActiveRecord::Base

def to_s
  "#{self.name} is my name."
end

end
