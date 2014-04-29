class Person
  def initialize(name)
    @name = name
    @age = 28
    @fav_color = "Pink" 
    @fav_foods = ["Passion fruit", "chocolate"]
  end
  
  attr_accessor :name, :age, :fav_color, :fav_foods
  
  def fav_color(color)
  	@fav_color = color
  end

  def greet
    puts "Hello"
  end
end

new_person = Person.new("New")
nice_person = Person.new("Nice")
rich_person = Person.new("Rich")

puts "#{new_person.name}, #{nice_person.name}, #{rich_person.name}"

new_person.greet

#new_person.fav_color = 'lemon' 
#puts "new_person's favorite color is #{new_person.fav_color}"

new_person.age = 30
puts new_person.age

puts new_person.name
puts new_person.fav_foods
puts nice_person.fav_color("Royal blue")


