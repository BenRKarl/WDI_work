class Email < ActiveRecord::Base
  has_many :appearances
  has_many :websites, -> {uniq}, through: :appearances

end
