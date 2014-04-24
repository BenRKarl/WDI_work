require "Faker"
class Person
  attr_accessor :name
  def initialize
   @name = Faker::Name.name
  end
end
