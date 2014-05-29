class Person
  attr_accessor :age

   def initialize(age)
    @age = age
   end

end

display = Proc.new { |person| puts person.age }

def increment(person, callback)
    person.age += 1
    callback.call(person) 
end

new_person = Person.new(30)

increment(new_person, display)
