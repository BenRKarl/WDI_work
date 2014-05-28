# Ruby
my_ruby_name_array = ['Lich', 'Bd']

def multiply(x, y)
  x * y
end


def greet(joy_factor)
  if joy_factor > 10
    note = "I am soooo happy"
  elsif joy_factor > 0
    note = "I am happy"
  else
    note = "I am ehh"
  end
end


day = 'Tuesday'
case day
  when 'Monday'
    p 'Happy coffee'
  when 'Friday'
    p 'Happy hour'
else
  p 'This day doesn\'t count'
end


my_name = ['Lichard', 'de', 'grey']

my_name.each do |name|
  p name + "... is part of the name"
end


my_hash = {name: 'Lichard', age: 3, hobby: 'Learning JS'}
my_hash[:name]
