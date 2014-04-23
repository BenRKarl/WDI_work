print "What is your age, youngster? "
age = gets.chomp.to_i

puts "Time to part-ay." if age >= 21
puts "Woah, there, whippersnapper.  Root beer for you." if age < 21
