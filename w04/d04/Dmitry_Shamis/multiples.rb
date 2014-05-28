num_array = []

(1..999).each do |num|
  if num % 3 == 0 || num % 5 == 0
    num_array.push(num)
  end
end

sum = num_array.reduce(:+)

puts sum

puts "One line solution:"
puts (1..999).to_a.select! { |x| x % 3 == 0 || x % 5 == 0}.reduce(:+)

puts "Another one line solution:"
puts (1..999).select { |x| x % 3 == 0 || x % 5 == 0}.inject { |sum, n| sum + n }
