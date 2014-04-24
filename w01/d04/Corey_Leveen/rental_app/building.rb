class Building
  attr_accessor :address, :style, :floors
  def initialize(address, style, floors)
    @address = address
    @style = style
    @floors = floors
  end

end
