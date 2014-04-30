require 'Faker'

class Person
  def initialize
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = tagline
  end

  def tagline
    tagline = "I believe in #{Faker::Company.catch_phrase}"
  end

end
