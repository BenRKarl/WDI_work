
require 'faker'

class Person

  attr_accessor(:name, :email, :tagline)

  def initialize(name, email, tagline)
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = Faker::Person.slogan
end
