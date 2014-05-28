#Find the sum of the multiples of 3 + 5 less than 1000

def euler
  sum = 0
  count = 0
  while sum < 1000
    if count % 3 == 0
      sum += count
      puts sum
    elsif count % 5 == 0
      sum += count
      puts sum
    end
    count += 1

  end
end


