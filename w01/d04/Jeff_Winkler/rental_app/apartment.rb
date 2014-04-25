
class Apartment

  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants, :building
  def initialize(unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
    @building = "unassigned"
  end

  def occupied?
    if @tenants.count > 0
      true
    else
      false
    end
  end

  def to_s
    "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  end

end
