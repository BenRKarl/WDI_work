class Email < ActiveRecord::Base
  has_many :associations
  has_many :sites, -> {uniq}, through: :associations
end
