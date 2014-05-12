#iterate on numbers 1-100 if divisible by 3 and 5 print fizzbuzz, if divisible by
# 3 print fizz, if divisible by 5 print buzz, if neither print the number.

def fizzbuzz

  array = (1..100).to_i

  array.each print |x|

  if x % 3 == 0
    puts "Fizz"
  elsif x % 5 == 0
    puts "Buzz"
  else x % 15 == 0
    puts "FizzBuzz"
end

1.upto(100) do |i|
  if i % 3 == 0 && i % 5 == 0
 #if i % 15 == 0
    print "fizzbuzz"
  elsif i % 3 == 0
    print "fizz"
  elsif i % 5 == 0
    print "buzz"
  else
    print i
  end
end

1.upto(100) do |i|
  string = ""
  string += "fizz" if i % 3 == 0
  string += "buzz" if i % 5 == 0
  string = i if string == ""
  puts string
end
