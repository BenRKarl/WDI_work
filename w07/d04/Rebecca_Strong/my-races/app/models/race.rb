class Race < ActiveRecord::Base
def to_s
  "#{self.name} (#{self.location}) (#{self.race_date}) (#{self.finish_time})"
end

end
