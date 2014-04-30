require 'Faker'

class Person
  attr_accessor :name, :email, :tagline


  def initialize
    @name         = Faker::Name.name
    @email        = Faker::Internet.free_email(@name)
    @tagline      = Faker::Company.bs()
    @catchphrase  = Faker::Company.catch_phrase()
  end

end
