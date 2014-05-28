my_ruby_name = ['lich', 'bod', 'gray']

def multiply(x, y)
x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = "I am so happy"
  elsif joy_factor > 0
    note = "I am happy"
  else
    note = "I am ehh"
  end
end


day = 'Tuesday'
case day
when 'Monday'
  p "Happy Coffee"
when 'Tuesday'
  p "How was that coffee"
else
  p "this day doesnt count"
end

my_name_array = ['lich', 'bod', 'gray']

my_name_array.each do |name|
  p name + "...is part of the name"
end
