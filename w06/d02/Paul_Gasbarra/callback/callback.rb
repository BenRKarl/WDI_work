class Person
  attr_accessor :age
    @age = 10
  end
end

def callback(person)
  person.age += 1
end

def birthday(person, callback )
  callback(person)
  puts person.age
end

person = Person.new(1)

