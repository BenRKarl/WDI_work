class Apartment
  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms
   def initialize (unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @occupied = false
    @tenants = Array.new
  end

  def occupied?
    if @tenants.length > 0
      @occupied = true
    else @occupied = false
    end
  end

  def tenants
    @tenants
  end

  def to_s
    "#{unit} costs $#{rent} a month, has #{sqft} sqft, has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
  end

end

#made a front end
