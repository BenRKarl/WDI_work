class Person

attr_accessor :name, :age, :income

  def initialize(name, age, income)
    @name = name
    @age = age
    @income = income
  end

  def to_s
    "My name is #{name}, I am #{age} and I earn $#{income} per year."
  end

end




