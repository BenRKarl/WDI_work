class Apartment
  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms

  def initialize (unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []


  end

  def occupied?
  !@tenants.empty?

  end
  def tenants
@tenants
  end
  def apartments
    @apartments = Object.new

  end

def to_s
  profile = "#{unit} costs $2400 a month, has 800 sqft, has 2 bedrooms and 1 bathrooms."
  return profile
end

end
