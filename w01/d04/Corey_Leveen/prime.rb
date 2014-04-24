def prime?(int)

  case int
  when 1, 2, 3, 5, 7
    return true
  end
  if int % 2 == 0
    return false
  elsif int % 3 == 0
    return false
  elsif int % 4 == 0
    return false
  elsif int % 5 == 0
    return false
  elsif int % 7 == 0
    return false
  else
    return true
  end
end

prime?(2)
prime?(3)
prime?(8)

