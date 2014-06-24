class url < ActiveRecord::base
  has_many :appearances
  has_many :emails, through: :appearances
end

