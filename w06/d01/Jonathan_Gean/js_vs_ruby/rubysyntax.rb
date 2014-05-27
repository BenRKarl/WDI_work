#comment
my_ruby_name_array = ['jim','fort','jump']


def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = 'I am so happy'
  elsif joy_factor > 0
    note = 'I am happy'
  else
    note = 'I am ehh'
  end
end

day = 'Tuesday'
case day
when 'Monday'
  p 'Happy coffee'
when 'Tuesday'
  p 'How was that coffee'
when 'Friday'
  p 'the cure'
else
  p 'this day does not count'
end

my_name = ['J','C','G']

my_name.each do |name|
  p name + '..is part of the name'
end
