# recursive
def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2)
end

def fibo(n)
  if n < 2
    n
  else
    fibo(n-1) + fibo(n-2)
  end
end

#non recursive
def fib_non(n)
  if n > 2
    (n-1)+(n-2)
  end
end

def sum(array)
  if array == 0
    return 0
  else
    return sum(array)
  end
end

#iterate
def sum_it(array)
  sum=0
  array.each do |i|
    sum += i
  end
end
