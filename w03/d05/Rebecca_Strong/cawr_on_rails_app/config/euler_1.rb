Q:

multiples of 3 or 5 in a list 1..10 return 3, 5, 6, 9 and sum of these is 23.
Return the equivalent in a list 1..1000


#Create an array of numbers 1..999
arr = (1..999).to_a
arr.map do |num|
  if num % 3 == 0 || num % 5 == 0
    num
  else
    nil
  end
end
sum = 0
arr.compact.each do |num|
  sum += num
end
  puts sum


# Steven's solution
sum = 0
arr = (1..999).to+aarr.each do |i|
  if i % 3 == 0
    sum += ielsif i % 5 ==0
    sum += i
  end


  # Wake

  puts (1..999).to_a.select!{|x| x % 3 == 0 || x % 5 ==0}.reduce(:+)
# where .reduce(:+) is .inject{|sum, n| sum + n}
# 3,5,6 9.inject

# 3,5,6,9.inject
# sum = 3 8 14
# n  = 5 6 9



