my_ruby_name_array = ['Lich', 'Bod', 'Glennifer']

def multiply(x,y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = "I am SOOO happy!"
  elsif joy_factor > 0
    note = "I am happy!"
  else 
    note = "I am meh."
  end
  note
end

day = 'Tuesday'
case day
when 'Monday'
  p 'Happy'
when 'Tuesday'
  p 'Morose'
when 'Friday'
  p 'I am in love'  
else
  p 'Today does not count'
end


my_name_array = ['Lichard', 'de', 'Gray']

my_name_array.each { |name_itself| p name_itself + '... is part of the name' }

my_hash = { name: 'Lichard', age: 3, hobby: 'Learning Javascript' }
my_hash[:name]









