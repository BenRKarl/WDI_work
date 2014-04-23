=begin
Define a Person class.

Attributes to include:
- name
- age
- favorite color
- favorite foods

Methods to include:
- Say "Hello"
- Change favorite color
- Read all of the attributes

Instantiate several objects of type Person
=end

class Person
  attr_accessor :name
  attr_accessor :age
  attr_accessor :favorite_color
  attr_accessor :favorite_foods

  def initialize(name, age, favorite_color, favorite_foods)
    @name = name
    @age = age
    @favorite_color = favorite_color
    @favorite_foods = favorite_foods
  end

  def salutations
    puts "Hello #{name}! Top of the morning to you!"
  end
  def about
    puts "So, #{name}, you tell me you're #{age} years old, love the color #{favorite_color}, and, if given the choice, would eat #{favorite_foods} until you swelled up like Violet in Charlie and the Chocolate Factory."
  end
end

Person.new("Bilbo","111","green on yellow, or yellow on green","seed cakes")
Person.new("Kristen","23","rainbow","squa candy")
Person.new("Blue","infinite","navy","sea-water")

=begin
NOTE: If Person.new is created without (1,2,3,4) error says "wrong number of arguments (0 for 4)"
NOTE: If attr_accessors are removed, @1, @2, @3, @4 is needed to link when calling the method .about, with the error message: "undefined local variable or method 'name'"
=end
