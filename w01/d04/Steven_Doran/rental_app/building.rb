class Building

  attr_accessor :address, :style, :floors, :apartments

  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end

  def to_s
    puts = "This building has #{@apartments.count} apartments."
  end

  def apartments
    @apartments
  end

  def apartment_count
    @apartments.count
  end

end


# test = Building.new('21 East 21st Street', 'Art-Deco', 8)