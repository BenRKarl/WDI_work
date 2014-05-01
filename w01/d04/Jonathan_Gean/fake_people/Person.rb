require "Faker"
class Person
  def initialize
    @name = Faker::Name.name
  end
  def name
    @name
  end
  def to_s
  puts    "Hi, my name is #{@name.upcase}"
  end

end
