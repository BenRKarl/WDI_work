class Person < ActiveRecord::Base
  # def initialize(name, email)
  #   @name = name
  #   @email = email
  # end
  def to_s
    "#{self.name} (#{self.email})"
  end
end
