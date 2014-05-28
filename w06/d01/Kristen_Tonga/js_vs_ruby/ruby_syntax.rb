# Comments

my_ruby_arr = [1, 2, 3]

def multiply(x, y)
  x * y
end

def greet (jay_factory)
  if jay_factory > 10
    note = "happiness!"
  elsif jay_factory > 0
    note = "okness."
  else
    note = "ehh"
  end
end



day = 'Tuesday'
case day
when 'Monday'
  p 'Happy Coffee'
when 'Tuesday'
  p 'Coffee?'
else
  p "love"
end



ny_name = ['Lichard', 'de', 'man']

ny_name.each do |name|
  p name + '... is part'
end


my_hash = {name: 'bob', age: '100', hobby: 'skygliding'}
my_hash[:name]
