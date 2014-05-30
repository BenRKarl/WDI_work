# create array of numbes below 1000
arr = (1..999).to_a
arr.map! do |i|
  # if i % 3 != 0 && i % 5 != 0
  #   arr.delete(i)
  # end
  if i % 3 == 0 || i % 5 == 0
    i
  else
    nil
  end
end
sum = 0

arr.compact.each do |i|
  sum += i
end
puts sum


# STEVE Solution
sum = 0
arr = (1..999).to_a
arr.each do |i|
  if i % 3 == 0
    sum += i
  elsif i % 5 == 0
    sum += i
  end
end
puts "Steve's solution"
puts sum

# one-line solution
puts (1..999).to_a.select{ |i| i % 3 == 0 || i % 5 == 0}.inject{ |sum, n| sum + n }

# another way
# puts (1..999).select{ |i| i % 3 == 0 || i % 5 == 0}.inject(:+)
