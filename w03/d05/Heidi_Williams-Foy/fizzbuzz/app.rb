


1. upto(100) do |i|
#if i % 15 == 0
if i % 3 == 0 && i % 5 == 0
	puts "fizzbuzz"
elsif i % 3 == 0
	puts "fizz"
elsif i % 5 == 0
	puts "buzz"
else
	puts i
end
end

#Jeff's Way
1.upto(100) do |i|
	string =""
	string += "fizz" if i % 3 == 0
	string += "buzz" if i % 5 == 0
	string = i if string == ''
	puts string
end



