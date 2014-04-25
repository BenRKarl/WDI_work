class Person
  attr_accessor :name, :age, :income	

  def initialize(name, age, income)
    @name = name
    @age = age.to_i
    @income = income.to_i
  end
  	
  def to_s
  	profile = "#{name} is #{age} years old and earns $#{income} per year."
  	return profile
  end		
end

# person = Person.new("Nessa", 23, 70_000)
# puts nessa.to_s