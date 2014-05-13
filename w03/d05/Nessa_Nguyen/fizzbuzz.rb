
array = (1..100).map do |x|
	if x % 15 == 0
		"FizzBuzz"
	elsif x % 3 == 0
		"Fizz"
	elsif x % 5 == 0
		"Buzz"
	else	
		x
	end	
end	



array2 = (1..100).map do |i|
	string = ""
	string += "fizz" if i % 3 == 0
	string += "buzz" if i % 5 == 0
	string = i if string == ""
	puts string
end

puts array2
