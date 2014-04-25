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
		!@tenants.empty?
		# if occupied
		# 	return true
		# else
		# 	return false
		# end
	end

	def tenants
		@tenants
	end

	def to_s
		"#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
	end

	# def push
	# 	@tenants.push = Apartment.new if occupied?
	# end

	# def profile
	# 	puts "#{@unit} costs #{@rent}, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
	# end

end