class Car < ActiveRecord::Base
  def to_s
    "#{self.make} (#{self.year})"
  end
end
