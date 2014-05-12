1.upto(100) do |i|
	if i % 3 == 0 && i % 5 == 0
		puts "FizzBuzz"
	elsif i % 3 == 0
		puts "Fizz"
	elsif i % 5 ==0
		puts "Buzz"
	else
		puts i
	end
end

# another way

i = 1
while i <= 100
	if i % 3 == 0 && i % 5 == 0
		puts "FizzBuzz"
	elsif i % 3 == 0
		puts "Fizz"
	elsif i % 5 ==0
		puts "Buzz"
	else
		puts i
	end
	i += 1
end

# another more complicated way

100.times do |i|
	string = ""
	string += "Fizz" if i % 3 == 0
	string += "Buzz" if i % 5 == 0
	string = i if string == ""
	puts string
end