# Commenting out in Ruby

[1] pry(main)> puts "Hey down there. You are crampin my style. Get out of here node."
Hey down there. You are crampin my style. Get out of here node.
=> nil

[2] pry(main)> my_array = [2, 3, 4, 1]
=> [2, 3, 4, 1]


def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = "I am sooo happy"
  elsif joy_factor > 0
    note = "I am happy"
  else
    note = "I am ehh"
  end
end

day = "Tuesday"
case day
when "Monday"
  p 'Happy coffee'
when "Tuesday"
  p 'How was that coffee'
when "Friday"
  p "I am in love"
else
  p "This day does not count"
end

my_name = ['Lichard', 'de', 'Grey']
my_name.each do |name|
  p name + '... is part of the name'
end

my_hash = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'}
my_hash[:name]

this = "My greeting is:"

def change_greeting(greeting)
  this = this + greeting
end

