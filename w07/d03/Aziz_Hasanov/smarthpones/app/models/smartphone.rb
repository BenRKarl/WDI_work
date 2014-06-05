class Smartphone < ActiveRecord::Base
  def to_s
    "#{self.model} (#{self.os})"
  end
end
