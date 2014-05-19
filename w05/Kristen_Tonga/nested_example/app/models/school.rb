class School < ActiveRecord::Base
  has_many :courses
  accepts_nested_attributes_for :courses
end
