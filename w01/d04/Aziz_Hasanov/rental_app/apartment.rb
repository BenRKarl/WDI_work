class Apartment
	attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :occupied

	def initialize(unit, rent, sqft, bedrooms, bathrooms)
		@unit = unit
		@rent = rent
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = []
	end

	def occupied?
		@tenants.any?
		# @tenants.length > 0

		# another way
		# !@tenants.empty?
	end

	def tenants
		@tenants
	end

	def to_s
		"#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
	end

end