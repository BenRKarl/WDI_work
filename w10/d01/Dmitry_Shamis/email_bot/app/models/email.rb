class Email < ActiveRecord::Base
  has_many :email_websites
  has_many :websites, -> {uniq}, through: :email_websites, uniq: true
end
