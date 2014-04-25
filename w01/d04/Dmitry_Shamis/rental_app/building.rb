class Building
  attr_accessor :address, :style, :floors, :profile, :apartments

  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
    @apartments = {}
  end

  # def new_building
  #   new_building
  # end

  def apartment_count
    @apartments.count
  end

  def to_s
    return "This building has #{@apartments.count} apartments."
  end

end
