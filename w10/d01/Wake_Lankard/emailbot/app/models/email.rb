class Email < ActiveRecord::Base
  has_many :appearances
  has_many :urls, -{uniq} ,through: :appearances, :uniq true
end
