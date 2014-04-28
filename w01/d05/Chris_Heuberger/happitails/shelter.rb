class Shelter
  attr_accessor :name, :address
  def initialize(name, address)
    @name = name
    @address = address
    @animals = animals
    @clients = clients
  end
  def to_s
    puts "#{:name} shelter at #{:address} has 0 animals and 0 people"
  end
end










