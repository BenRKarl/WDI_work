class Email < ActiveRecord::Base
  has_many :scrapings
  has_many :websites, through: :scrapings

end
