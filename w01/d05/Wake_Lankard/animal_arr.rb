arr = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts "plurals"
arr.each { |w| print w + "s " }
puts

puts "sorted alphabetically"
puts arr.sort
puts
 
 puts "sorted reverse alpha"
 puts arr.sort { |x,y| y<=> x }
 puts

 puts "reversed strings"
 puts arr.map { |x| x.reverse }
 puts

puts "sorted by word length"
puts arr.map.sort_by {|x| x.length }
puts

puts "sorted alpha by last character"
puts arr.sort_by { |x| x[x.length-1] }

