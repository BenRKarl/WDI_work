class Proto < ActiveRecord::Base
  validates :name, uniqueness: true # only creates one unique record in the table
  zodiac_reader :birthday
end
