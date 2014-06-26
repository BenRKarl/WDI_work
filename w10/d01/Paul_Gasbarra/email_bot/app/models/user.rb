class User < ActiveRecord::Base
  has_many :emails
  has_many :urls, -> {uniq} ,through: :appearances
end
