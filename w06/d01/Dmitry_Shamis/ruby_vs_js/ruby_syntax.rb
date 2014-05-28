# RUBY
# Comment out with #

my_ruby_name_array = ["Lich", "Da", "Grey"]
my_ruby_name_array[0] = "Lich"

def multiply(x, y)
  x * y
end

def greet(joy_factor)
  if joy_factor > 10
    note = "I am SOOOOOO happy"
  elsif joy_factor > 0
    note = "I am happy"
  else
    note = "I am ehh"
  end
  note
end

day = "Tuesday"
case day
  when "Monday"
    p "Happy Coffee"
  when "Tuesday"
    p "How was that coffee?"
  when "Friday"
    p "I am in love"
  else
    d "This day does not count"
end

my_name_array = ["Lichard", "de", "Grey"]

my_name_array.each do |name|
  p name + "...is part of the name"
end

my_hash = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'}
my_hash[:name]
