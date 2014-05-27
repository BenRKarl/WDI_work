my_ruby_name_array = ['Lich', 'Da', 'Gray']
my_ruby_name_array[0]

def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = 'im soo happy'
  elsif joy_factor > 0
    note = 'im happy'
  else
    note = 'im ehhh'
  end
end

day = 'tuesday'
case day
when 'monday'
  p 'happy coffee'
when 'tuesday'
  p 'how was that coffee?'
when 'friday'
  p 'im in love'
else
  p 'this day does not count'
end

my_name = ['Lich', 'Da', 'Gray']
my_name.each do |name|
  p name + "... is part of the name"
end

my_hash = {name: "Lich", age: 3, hobby: "learning js"}
my_hash[:name]

