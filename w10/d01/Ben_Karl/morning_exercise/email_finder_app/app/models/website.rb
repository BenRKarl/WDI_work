class Website < ActiveRecord::Base
  has_many :appearances
  has_many :emails, through: :appearances
end
