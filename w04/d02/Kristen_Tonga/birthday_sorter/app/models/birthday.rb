class Birthday < ActiveRecord::Base
  validates :name, uniqueness: true
  zodiac_reader :dob
end
