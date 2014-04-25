
class Building

  attr_accessor :address, :style, :floors, :apartments

  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end

  def apartment_count
    @apartments.length
  end

  def to_s
    count = apartment_count
    "This building has #{count} apartments."
  end
end

