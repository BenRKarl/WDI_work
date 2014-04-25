require_relative 'person.rb'

class Apartment

  attr_accessor :unit, :rent, :sqfeet, :bedrooms, :bathrooms, :tenants

  def initialize(unit, rent, sqfeet, bedrooms, bathrooms)
    @unit = unit
    @rent = rent
    @sqfeet = sqfeet
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def occupied?
    @tenants.count == 0 ? false : true
  end

  def to_s
    "#{@unit} costs $#{@rent} a month, has #{@sqfeet} sqfeet, has #{@bedrooms} bedrooms, has #{@bathrooms} bathrooms"
  end
end
