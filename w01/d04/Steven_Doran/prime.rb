def prime?(number)
   
  return false if number <= 1
   
  divisor = 2
  
  while number > divisor
    return false if number % divisor == 0
    divisor += 1
  end

return true

end


puts "Please enter a number:"
  
number = gets.chomp.to_i
  
puts prime?(number)