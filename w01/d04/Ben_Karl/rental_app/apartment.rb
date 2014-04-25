class Apartment

  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants

  def initialize(unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @sqft = sqft
    @rent = rent
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def occupied?
   return true if @tenants[0]
   false
  end

  def to_s
    return "#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
  end

end
