def prime?(num)
return false if num <= 1
  i = 1

  while i < number
  return false if i % 2 == 0
  end
  else
    return true
end




class Integer
def prime?
  return false if self <= 1
  for i in (2..Math.sqrt(self))
    return false if self % i == 0
  end
  true
end
end

