class Person (name, age)
  attr_acessor :age

  def initialize
    @age = age
  end

end

# def have_a_birthday
#   Thread.new {@new_age = age + 1 ; puts new_age}
# end

Proc.new { |person| puts person.age }

def birthday (person, show)
  person.age += 1
  show.call(person)
end


Person.new(10)
birthday(person, show)
