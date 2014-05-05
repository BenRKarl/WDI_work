class Apartment
	attr_reader :occupied
	attr_accessor = :unit :rent :sqft
	def initialize(unit,rent,sqrt,bedrooms,bathrooms)
		@unit = unit
		@rent = rent
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = []

		

	end 

	def @occupied? 
		@tenants.any?
	end 

	def to_s
		"This building has #{apartment}"
end 
