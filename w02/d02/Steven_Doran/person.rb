require "Faker"

class Person

attr_accessor :name, :email

  def initialize
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @catchphrase = Faker::Company.catch_phrase
  end

end