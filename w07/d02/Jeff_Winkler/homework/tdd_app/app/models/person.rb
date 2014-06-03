class Person < ActiveRecord::Base

  def to_s
    return "#{self.name} (#{self.email})"
  end
end
