require "Faker"

class Person

  def initialize
    @name = Faker::Name.name
  end

  def name
    @name
  end
  
end

