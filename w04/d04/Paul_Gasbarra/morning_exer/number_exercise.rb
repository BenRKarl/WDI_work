nums = (1..999).to_a
nums.each do |x|
  if x % 3 != 0 && x % 5 != 0
    nums.delete(x)
  end

end

total = 0

nums.each do |x|
total += num
end

print nums
puts  total
