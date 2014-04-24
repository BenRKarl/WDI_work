require_relative 'person'


fakes = []
	1000.times do
		@fakes.push(Person.new.name)
	end

array = []
	100.times {array << Person.new}



# also : arr = 1_000.times.map{Person.new}


#get names
array.each do |person|
		puts person.name
	end
