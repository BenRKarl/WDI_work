require_relative 'person.rb'

class Apartment

  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants

  def initialize(unit, rent, sqft, bedrooms, bathrooms)
  	@unit = unit
  	@rent = rent
  	@sqft = sqft
  	@bedrooms = bedrooms
  	@bathrooms = bathrooms
  	@tenants = []
  end

  def occupied?
  	@tenants.count == 0 ? false : true
  end

  def to_s
  	"#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
  end

end
