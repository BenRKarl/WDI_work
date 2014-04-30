require 'faker'

class Person

attr_accessor :name, :email, :tagline
def initialize
  @name = Faker::Name.name
  @email = Faker::Internet.email(@name)
  @tagline = Faker::Company.catch_phrase

end



end
