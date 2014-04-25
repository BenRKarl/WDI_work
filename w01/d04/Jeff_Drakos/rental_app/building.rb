class Building
  attr_accessor :address, :style, :floors, :apartments

  def initialize (address, style, floors)
  @address = address
  @style = style
  @floors = floors
  @apartments = {}
  end

def to_s
  profile = "This building has #{apartment_count} apartments."
end
def apartment_count
return 0 if @apartments.empty?
 @apartments.length
end

end
