multiples_array = []

for n in 1..999
  if n % 3 == 0
    multiples_array << n
  elsif n % 5 == 0
    multiples_array << n
  end
end

multiples_array.inject{|sum,x| sum + x }

999.times { |n| [] << n if n % 3 == 0 || n % 5 == 0 n += 1 }.inject(:+)
