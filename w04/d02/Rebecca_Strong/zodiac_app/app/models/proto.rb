class Proto < ActiveRecord::Base
  validates :name, uniqueness: true
  zodiac_reader :birthday
  # ie. call zodiac_reader on birthday and not on the person - info comes from the zodiac documentation in rubydoc
end
