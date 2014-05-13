require 'bundler'
Bundler.require

def fizzbuzz(num)
  if num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  elsif num % 15 == 0
    puts "FizzBuzz"
  else
    puts num
  end
end

get '/' do
  @arr = (0..100).to_a
end
