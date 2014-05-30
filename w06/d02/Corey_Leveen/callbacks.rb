class Person

  attr_accessor :age

  def initialize(age)
    @age = age
  end
end

mcJagger = Person.new(100)


@cback = Proc.new { |x| x.age += 1 }


def older(person)
  @cback.call
end
