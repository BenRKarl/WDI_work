class Building
  attr_accessor	:address, :style, :floors, :apartments

  def initialize(address, style, floors, apartment_count=nil)
  	@address = address
  	@style = style
  	@floors = floors.to_i
  	@apartments = {}
  end	

#  def apartment_add
#    apartments[].push(Object.new)
#  end

  def apartment_count
    apartments.length
  end	

  def to_s
  	profile = "This building has #{apartment_count} apartments."
  	return profile
  end
end

building = Building.new("23 E 10 St" ,"Art deco", 5)
building.to_s