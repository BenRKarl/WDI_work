require 'faker'

Class person
  def initialize
    @name = Faker::Name.name #returns fake name
    @email = Faker::Internet.email(@name)
    @tagline = Faker::Company.catch_phrase
  end

  def name
    @name = Faker::name
  end

  def email
    @email = Faker::email
  end

end
