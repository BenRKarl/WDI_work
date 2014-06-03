def person_age(age, by = 1)

end


def increment!(age, by = 1)
  self[age] ||= 0
  self[age] += by
  self
end



class Person
  attr_accessor :age

  def initialize
    @age = 30
  end

  def post++
    old_value = @age
    @age = @age += 1
    old_value
  end
end

c = Count.new
c.age # => 0
c++      # => 0
c.age # => 1