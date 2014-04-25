class Building
  attr_accessor :address, :style, :floors, :apartments
  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end

  def to_s
    return "This building has #{apartments.size} apartments."
  end

  def apartment_count
    return @apartments.size
  end

end
