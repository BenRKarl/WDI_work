class Site < ActiveRecord::Base
  validates_uniqueness_of :url
  has_many :appearances
  has_many :emails, through: :appearances
end
