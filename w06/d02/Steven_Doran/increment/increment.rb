class Person
  attr_accessor :age

   def initialize
    @age = 10
   end

end

def increment(person, callback)
    person.age += 1
    callback.call(person) 
end

display = Proc.new { |person| puts person.age }
new_person = Person.new
increment(new_person, display)