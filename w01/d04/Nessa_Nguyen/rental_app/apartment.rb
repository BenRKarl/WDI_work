class Apartment
  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants

  def initialize(unit, rent, sqft, bedrooms, bathrooms)
  @unit = unit
  @rent = rent.to_i
  @sqft = sqft.to_i
  @bedrooms = bedrooms.to_i
  @bathrooms = bathrooms.to_i
  @tenants = []
  end


  def occupied?
  	if tenants[0].nil? 
  	  return false
  	else 
  	  return true
  	end	
  end	

  def to_s
  	profile = "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  	return profile
  end
  	
end	

apartments = Apartment.new("2F", 2677, 800, 2, 1)
# puts apartments.to_s
# puts apartments.occupied?