# I can comment things out

my_ruby_name_array = ['Lich', 'Da', 'Grey']

def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = 'I am so happy'
  elsif joy_factor > 0
    note = 'I am happy'
  else
    note = 'I am ehhh'
  end
  note
end

day = 'Tuesday'
case day
when 'Monday'
  p 'Happy Coffee Day'
when 'Tuesday'
  p 'How was that coffee?'
when 'Friday'
  p 'I am in love?'
else
  p 'This day does not count.'
end




my_name = ['Lich', 'de', 'Grey']

my_name.each do |name|
  p name + '...is part of the name'
end


my_hash = {name: 'Lichard', age: 3, hobby: 'learning JS'}
my_hash[:name]
