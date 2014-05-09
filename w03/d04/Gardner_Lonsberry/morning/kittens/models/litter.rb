class Litter < ActiveRecord::Base
  has_many :kittens
end