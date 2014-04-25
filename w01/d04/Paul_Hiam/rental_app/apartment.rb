class Apartment
	attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms
	attr_reader :tenants
	def initialize(unit, rent, sqft, bedrooms, bathrooms)	
	
		@unit = unit
		@rent = rent
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = []
	end

  def occupied?
  	return false if @tenants[0].nil?
  	true
  end

def to_s
  return "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  

end








end
