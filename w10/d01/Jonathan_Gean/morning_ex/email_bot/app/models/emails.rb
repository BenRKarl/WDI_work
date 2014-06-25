class Emails < ActiveRecord::Base
  has_and_belongs_to_many :Sites
end
