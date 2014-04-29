random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

puts "PLURAL----"
random_animals.each {|x| puts x + "s"}
puts "SORT a-z----"
puts random_animals.sort
puts "Sort z-a----"
puts random_animals.sort.reverse
puts "Reverse----"
# random_animals.map{|x| x.reverse}
puts random_animals.each {|x| puts x.reverse}
puts "Length----"
puts random_animals.sort_by {|x| x.length}
puts "Last letter----"
puts random_animals.sort_by{ |x| x[-1]}
