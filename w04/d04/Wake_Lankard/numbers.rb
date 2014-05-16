

result = 0
arr = (1..9).to_a
arr.keep_if { |x| x % 3 == 0 || x % 5 == 0 }
arr.each { |x| result += x }
puts result
print arr

result = 0
arr = (1..9).to_a
arr.keep_if { |x| x % 3 == 0 || x % 5 == 0 }
arr.each { |x| result += x }
puts result
print arr
puts 


puts "one line: #{ (1..999).to_a.select! { |x| x % 3  ==0 || x % 5 == 0 }.reduce(:+) }"