def prime?(num)
  for i in (2...num)
    if num % i == 0
      return false
    end
  end
  return true
end

for x in (1..100)
  puts x if prime?(x)
end
