#Paul's solution

arr = (1...999).to_a
arr.each do | num|
	if num % 3 != 0 || num % 5 != 0
		arr.delete(num)
	end 
end

def sum_multiples(multiple, to)
    n = (to-1) / multiple
    n * (n+1) / 2 * multiple
end

#Steve

sum=0
arr= (1..999)to_a
arr.each do |i|
	if i % 3 == 0
		sum += i
	elsif i % 5 == 0
		sum += i
	end
end

puts Wake's solution
puts (1..999).to_a.select!{|x| x % 3 == 0 x % 5 == 0}.inject{|sum, n| sum + n}
puts (1..999).to_a.select!{|x| x % 3 == 0 x % 5 == 0}.inject{|sum, n| sum + n}


#irb(main):001:0> sum_multiples(3, 10) + sum_multiples(5, 10) - sum_multiples(15, 10)
#=> 23
#irb(main):002:0> sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000)
#=> 233168