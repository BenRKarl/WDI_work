# Ruby Commenting stuff out with #

my_ruby_name_array = ['Lich', 'Da', 'Grey']
my_ruby_name_array[0]

def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note ="I am SOOO happy"
  elsif joy_factor > 0
    note = "I am happy"
  else
    note = "I am ehh"
  end
  note
end



day = 'Tuesday'
case day
  when 'Monday'
    puts 'Happy coffee overdose day'
  when 'Tuesday'
    puts 'How was that coffee?'
  when 'Friday'
    p 'Where am I?'
  else
    p 'This day does not count'
  end

my_name_array = ['lichard', 'da', 'grey']

my_name_array.each do |name_itself|
    p name_itself + '... is part of the name'
  end

my_hash = {name: 'lichard', age: 3, :hobby: 'Learning JavaScript'}
my_hash[:name]
