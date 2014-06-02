class Person


  def initialize(age, name)
    @age = age
    @name = name
  end

  def increment
  @age = @age + 1
  end

end

ben = Person.new(25, "Ben")
puts ben.increment
