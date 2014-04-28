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
   @tenants.any? #SAME AS !@tenants.empty?, empty? and any? are opposites
  end

  def tenants
    @tenants
  end

  def to_s #THIS REDEFINES to_s WITHIN THE CLASS APARTMENT
    "#{@unit} costs $#{@rent} a month, has #{@sqft} sqft, has #{@bedrooms} bedrooms and #{@bathrooms} bathrooms."
  end 

  # def test_method
  #   puts "I am a method."
  # end

  # def test_method2r
  #   var = 44
  #   var.to_s
  #   puts var
  # end

end


 
  # test = Apartment.new('6F', 2400, 800, 2, 1)


  

