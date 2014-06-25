class Site < ActiveRecord::Base
  has_many :emails
  has_many :appearances


end
