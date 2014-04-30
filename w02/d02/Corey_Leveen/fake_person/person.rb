require "Faker"
class Person

def initialize
  @name = Faker::Name.name
  @email = Faker::Internet.email
  @tagline = Faker::Company.catch_phrase
end

def whoami
  puts "Hi! My name is #{@name}, my email is #{@email} and our tagline is #{@tagline}."
end
end

popeye = Person.new
popeye.whoami
