require "faker"

class Person

  def initialize
    @name = Faker::Name.name
    @email = Faker::Internet.email(@name)
    @tagline = Faker::Company.catch_phrase
  end

  def about_me
    puts "Hello! My name is #{@name} and you can reach me at #{@email}. My company is growing rapidly, as evidenced by our tagline: #{@tagline}."
  end

end

bob = Person.new
bob.about_me

george = Person.new
george.about_me
