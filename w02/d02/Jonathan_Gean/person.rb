require 'Faker'

class Person
  attr_accessor :name, :email, :tagline
  def initialize
    @name = Faker::Name.name
    @email = Faker::Name.name "@" Faker::Company.name ".com"
    @tagline = tagline
  end
end
