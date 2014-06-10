class Place < ActiveRecord::Base

  def to_s
    "#{self.name} is a place."
  end

end
