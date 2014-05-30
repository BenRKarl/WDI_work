class Person
  attr_accessor :age
  def initialize
    @age = 25
  end
end

person = Person.new

show = Proc.new { |person| puts person.age }

def increment(person, callback)
  person.age += 1
  callback.call(person)
end

increment(person, show)
