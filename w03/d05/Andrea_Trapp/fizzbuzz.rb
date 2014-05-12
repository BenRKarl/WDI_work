  (1..100).each do |number|
    if (number%3==0) && (number%5==0)   # also works 3*5=15  number%15 (but only with prime numbers like 3,5 )
        puts "FizzBuzz"
      elsif number%3==0
        puts "Fizz"
      elsif number%5==0 
        puts "Buzz"
      else
         puts "#{number}"
      end
    end


1.upto(100) do |i|
  puts i
end