require 'Faker'

class Person
  attr_reader :name
  def initialize
    @name = Faker::Name.name
  end
end

