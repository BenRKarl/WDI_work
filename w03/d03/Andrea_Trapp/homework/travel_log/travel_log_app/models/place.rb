class Place < ActiveRecord::Base
  has_many :trips
end