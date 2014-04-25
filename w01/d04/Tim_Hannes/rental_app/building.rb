
class Building

  attr_accessor :address, :style, :floors, :apartments

  def initialize(address, style, floors, num_apartments, apartments = {})
    @address = address
    @style = style
    @floors = floors
    @num_apartments = num_apartments
    @apartments = apartments
    # @address = {}
  end

  def change_address
    @address
  end

  def style
    @style
  end

  def floors
    @floors
  end

  def to_s
    "This building has #{@num_apartments} apartments."
  end

  def apartment_count
    @apartments.keys.size #counts number of keys and returns the number
  end

end
