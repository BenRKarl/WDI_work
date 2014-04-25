class Apartment

attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants


  def initialize(unit, rent, sqrft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqrft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def occupied?
    if @tenants.empty?
      return false
    else
    true
    end
  end

  def to_s
    "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  end



end
