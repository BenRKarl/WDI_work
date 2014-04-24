puts "What is the temp?"
temp = gets.chomp.to_i
puts "Is the A/C Functional? (y)es or (n)o"
ac = gets.chomp.downcase[0]
puts "What temp do you wish it was?"
temp_future = gets.chomp.to_i

if ac = "y" && temp > temp_future
  print "put on the AC"
elsif
  ac = "n" && temp > temp_future
    print "fix the AC now!"
elsif
   ac= "n" && temp < temp_future
    print "fix the AC whenever you have a chance"
else
  print "do whatever"
end

