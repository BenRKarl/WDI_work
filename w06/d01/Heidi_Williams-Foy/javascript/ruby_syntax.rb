my_ruby_name_array = ['Lich', 'Da', 'Grey']


def greet(joy_factor)
	if joy_factor > 10
		note = 'I am SOOOO happy'
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
  p 'Happy coffee'
when 'Tuesday'
  p 'How was that coffee'
when 'Friday'
  p 'I am in love'
else
  p 'This day does not count'
end


my_name_array = ['lichard', 'de', 'grey']

my_name_array.each do |name_itself|
	p name_itself + '... is part of the name'
end

my_hash = {name: 'Lichard', age: 3, hobby: 'Learning Javascript'}