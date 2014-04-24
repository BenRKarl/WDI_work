class Person
  attr_accessor :name, :age, :income, :profile
  def initialize(name, age, income)
    @name = name
    @age = age.to_i
    @income = income.to_i
    @profile = profile
  end

  def to_s
    return "#{name} is #{age} years old and earns $#{income} per year."
  end
end

