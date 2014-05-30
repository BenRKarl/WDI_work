#def euler
  sum = 0
  sumtotal = 0
  while sum <= 999
    if sum % 3 == 0 || sum % 5 == 0 
      sumtotal = sumtotal.to_i + sum
    end
    sum = sum + 1
  end
  puts sumtotal
#end

