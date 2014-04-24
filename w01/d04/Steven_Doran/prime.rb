def prime?(number)
   
  return false if number <= 1
   
  divisor = 2
  
  while number > divisor
    return false if number % divisor == 0
    divisor += 1
  end

 true

end


#OR

def prime_2?(number)
  return false if number <= 1

  for divisor in (2..Math.sqrt(number))
    return false if number % divisor == 0
  end

  true

end


puts "Please enter a number:"
  
number = gets.chomp.to_i
  
puts prime?(number)

puts prime_2?(number)