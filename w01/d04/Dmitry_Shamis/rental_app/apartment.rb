class Apartment
attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms

  def initialize(unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms

    @tenants = []
  end

  def new_apartment
    new_apartment
  end

  def occupied?
    if @tenants.empty?
      return false
    else
      return true
    end
  end

  def tenants
    tenants = Array.new
    @tenants
  end

  def to_s
    return "#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
  end
end
