my_ruby_name_array = ['Lich', 'Da', 'Gray']
# my_ruby_name_array[0]

def multiply(x, y)
x * y
end



def greet(joy_factor)
  if joy_factor > 10
    note = 'Iam SOO happy'
  elsif joy_factor > 0
    note = 'I am happy'
  else
    note = 'I am ehh'
  end
  note
end



day = 'Tuesday'
case day
when 'Monday'
  p 'Happy coffee overdose day'
when 'Tuesday'
  p 'How was that coffee'
when 'Friday'
  p 'I am in love'
else
  p 'this day does not count'
end




my_name = ['Lichard', 'de', 'grey']

my_name.each do |name_itself|
  p name_itself + '... is part of the name'
end


# hashes
my_hash = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'}
