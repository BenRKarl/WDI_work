class Proto < ActiveRecord::Base
	validates :name, uniqueness: true
end
