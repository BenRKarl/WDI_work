# Starting with 1 1 2
def r_fibonacci(n)
  if n == 1 || n == 2
    return 1
  else
    r_fibonacci(n-1) + r_fibonacci(n-2)
  end
end

puts r_fibonacci(7)


def i_fibonacci(n)
  return 1 if n == 1 || n == 2
  arr = [1,1]
  while n - 3 >= 0 do
    arr[arr.length] = arr[arr.length-1] + arr[arr.length-2]
    n -= 1
  end
  return arr.last
end

puts i_fibonacci(7)
