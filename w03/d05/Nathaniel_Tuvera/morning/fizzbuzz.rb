arr = (1..100).to_a

arr.each do |i|
if i % 5 == 0 && i % 3 == 0
    puts"FizzBuzz"
  elsif i % 3 == 0
    puts "fizz"
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end


1.upto(100) do |i|      #alternative start to problems
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

1.upto(100) do |i|
  string = ""
  string += "fizz" if i % 3 == 0
  string += "buzz" if i % 5 ==0
  string = i if string == ""
  puts string
end
