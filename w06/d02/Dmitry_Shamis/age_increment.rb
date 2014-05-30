class Person
  attr_accessor :age

  def initialize
    age = 10
  end
end

person = Person.new

def birthday(person, show)
  person.age += 1
  show.call(person)
end

show = Proc.new { |person| puts person.age }
