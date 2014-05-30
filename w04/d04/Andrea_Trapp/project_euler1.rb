def multiples_3_5(num)

  result = 0
  (1...num).each { |x| result += x if x%3==0 || x%5==0 }
  return result

end

puts multiples_3_5(1000)


puts (1...1000).to_a.select! {|x| x%3==0 || x%5==0}.inject{|sum, n| sum + n}
puts (1...1000).to_a.select! {|x| x%3==0 || x%5==0}.inject(:+)
puts (1..999).to_a.select! {|x| x%3==0 || x%5==0}.reduce(:+)