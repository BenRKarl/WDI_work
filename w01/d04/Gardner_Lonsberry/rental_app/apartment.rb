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



def occupied?
end

def push
end

def tenants
  @tenants = []
end

def occupied?
return true if @tenants[0]
end

# def tenants
#   if > 0
#     apartment = occupied
#   else
#     false//
end

end

