class Race < ActiveRecord::Base
def to_s
  "#{self.name} (#{self.location}) (#{self.date}) (#{self.time})"
end

end
