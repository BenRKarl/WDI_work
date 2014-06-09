
def sum_multiples(multiple, to)
    n = (to-1) / multiple
    n * (n+1) / 2 * multiple
end

#irb(main):001:0> sum_multiples(3, 10) + sum_multiples(5, 10) - sum_multiples(15, 10)
#=> 23
#irb(main):002:0> sum_multiples(3, 1000) + sum_multiples(5, 1000) - sum_multiples(15, 1000)
#=> 233168