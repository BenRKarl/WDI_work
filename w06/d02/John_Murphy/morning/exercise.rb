class Person
  attr_accessor :age
  def initialize
    @age = 0
  end

  def getting_older
    @age += 1
  end

end


show = Proc.new {|person| puts person.age}


new_person = Person.new

def display_age(person, function)
  person.getting_older
  function.call(person)
end

display_age(new_person, show)
display_age(new_person, show)
