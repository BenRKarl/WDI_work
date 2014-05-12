

fb = []

100.times do |x|
  if (x+1) % 15 == 0
    fb << "FizzBuzz"
  elsif (x+1) % 5 == 0
    fb << "Buzz"
  elsif (x+1) % 3 == 0
    fb << "Fizz"
  else
    fb << (x+1)
  end
end

puts fb

fb = []


100.times do |x|
  y = true if (x+1) % 3 ==0
  z = true if (x+1) % 5 == 0

  fb << "FizzBuzz" if y && z
  fb << "Fizz" if y && !z
  fb << "Buzz" if !y && z
  fb << (x+1) if !y && !z
end

puts fb

fb = []
100.times do |x|
  entry = ""
  entry = entry + "Fizz" if (x+1) % 3 == 0
  entry = entry + "Buzz" if (x+1) % 5 == 0
  entry = (x+1) if entry == ""
  fb << entry
end

puts fb


