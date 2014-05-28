1.upto(999) do |x|
    while
      m3 = x % 3 == 0
      m5 = x % 5 == 0
      puts 'm3 + m5'
end


1.upto(999).each do |x|
  m3 = x.modulo(3) == 0
  m5 = x.modulo(5) == 0
puts case
  when (m3 and m5) then puts 'm3 + m5'
  end
end





#This works
arr = (1..999).to_a
arr.map! do |num|
  if num % 3 != 0 || num % 5 != 0
    num
  else
    nil
  end
end

sum = 0

arr.compact.each do |num|
  sum += num
end
puts sum

#wakes one liner
puts (1..999).to_a.select!{|x| x % 3 == 0 || x % 5 == 0}.inject{|sum, n| sum + n}
