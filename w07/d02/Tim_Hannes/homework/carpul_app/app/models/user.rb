class User < ActiveRecord::Base

  def to_s
    "#{self.username} (#{self.email})"
  end

end
