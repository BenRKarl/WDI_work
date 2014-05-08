class Dog < ActiveRecord::Base

	def woof(times)
		"#{self.name} says #{'WOOF!'*times}"
	end

end