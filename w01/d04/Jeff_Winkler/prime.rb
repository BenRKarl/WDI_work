


def prime(num)
  return false if num < 2
  if num > 2
    todiv = num-1
    while todiv > 1
      if num%todiv==0
        return false
      else
        todiv -= 1
      end
    end
    return true
  else
    return true
  end
end

