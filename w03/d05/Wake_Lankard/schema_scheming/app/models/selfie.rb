class Selfie < ActiveRecord::Base
  belongs_to :celebrity
  has_many :comments
end
