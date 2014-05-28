sum = Array.new

0.upto(999) do |x|
  if x % 3 == 0 || x % 5 == 0
    sum.push(x)
  end
end

sum.inject(:+)

# alternative solutions

puts (1..999).to_a.select!{|x| x % 3 == 0 || x % 5 ==0}.reduce(:+)
