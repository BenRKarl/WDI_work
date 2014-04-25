require "Faker"
class Person
  def initialize
    @name = Faker::Name.name
  end

  def name #attr_reader is alternative
    @name
  end

  def to_s
    "Hi, my name is #{@name.upcase}."
  end
end
