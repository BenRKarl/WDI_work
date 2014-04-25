def prime?(n)
i = 2
while n > i
  if n % i == 0
    return false
  else
    return true
  end
  i += 1
end
end

# def prime?(n)
#   return false if n<= 1
#   i = 2

#   while i < number
#     return false if n % i == 0
#     i += 1
#   end

#   true
# end

def matt_prime?(number)
  return false if number <= 1

  for i in (2..Math.sqrt(number))
   return false if number % i == 0
  end
  true
end

class Integer
  def prime?
    return  false if self <=1
    for i in (2..Math.sqrt(self))
      return false if self % i == 0
    end
    true
  end
end
