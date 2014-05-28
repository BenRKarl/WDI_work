#Hi I'm a comment!

my_ruby_array = ['Lich', 'Bod', 'Joe']
my_ruby_array[0]

#Implicit return!

def multiply(x, y)
  x * y
end

#Conditional method

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

#Some case-y, when-y stuff

day = 'Tuesday'

case day
when 'Monday'
  puts "Happy coffee-overdose day."
when 'Tuesday'
  puts 'How was that coffee?'
when 'Friday'
  puts 'I am in a love'
else
  puts 'This day does not count'
end

#ITERATING

my_name = ['Lichard', "de", "Gray"]

my_name.each do |name|
  p name + '... is part of the name.'
end

#Hash!?

my_hash = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'}
my_hash[:name]
