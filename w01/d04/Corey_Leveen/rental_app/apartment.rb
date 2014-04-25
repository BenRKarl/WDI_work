class Apartment
  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants
  def initialize(unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @occupied = false
    @tenants = []
  end

  def occupied?
    if @tenants[0].nil?
      return false
    else
      return true
    end
  end

  def to_s
    return "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms.".to_s

  end
end
