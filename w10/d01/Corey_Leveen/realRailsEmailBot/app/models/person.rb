class Person < ActiveRecord::Base
  has_many :appearances
  has_many :sites, through: :appearances
end