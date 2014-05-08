class Trip < ActiveRecord::Base
  has_many :records
  belongs_to :place
end