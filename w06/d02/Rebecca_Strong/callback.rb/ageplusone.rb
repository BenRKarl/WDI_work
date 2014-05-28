class Person
  def initialize(age)
    @age = age
  end

  def new_age
    @age += 1
  end

  def increment
    puts "You were #{@age} years old."
    new_age
    puts "You are now #{@age} years old."
  end
end


# including the Proc
# show = Proc.new {|person| puts person.age}

# def birthday(person, show)
#   person.age += 1
#   show.call(person)
# end
