class Apartment

  attr_accessor :unit, :rent, :sqft, :bedrooms, :bathrooms, :tenants, :profile

  def initialize(unit, rent, sqft, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
    @profile
  end

  def occupied?
   !@tenants.empty?
  end

  def tenants
    @tenants
  end

  def to_s
    puts = "#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
  end 

end


 
  # test = Apartment.new('6F', 2400, 800, 2, 1)


  

