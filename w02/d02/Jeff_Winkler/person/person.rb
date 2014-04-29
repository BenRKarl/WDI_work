
require 'Faker'

class Person
  attr_accessor :name, :email, :tagline
  def initialize
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = Faker::Company.bs
  end
end

newp = Person.new
puts newp.name
puts newp.email
puts newp.tagline

