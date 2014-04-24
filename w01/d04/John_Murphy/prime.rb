def prime?(num)
  if num == 0 || num == 1
    return false
  end

  divisor = num - 1
  while divisor > 1
    if num % divisor == 0
      return false
    else
      divisor = divisor - 1
    end
  end
  return true
end

def prime2?(num)
  return false if num <= 1

  for i in (2..num-1)
      return false if num % i == 0
  end
    return true
end

def prime3?(num)
  return false if num <= 1

  i = 2
  while i < num
    return false if num % i == 0
    i += 1
  end
end
