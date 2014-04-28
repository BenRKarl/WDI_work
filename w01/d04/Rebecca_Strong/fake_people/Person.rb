require "Faker"

Class :Person

def name
  name=[1...1,000]

  gets.chomp
name.each{|name|}
puts "Hi, I am <''>."

end

#Corey's solution
require "Faker"
class Person
  def initialize
    @name = Faker::Name.name
  end
end


def to_s
"Hi, my name is #{@name.upcase}"
puts person
end



  end
