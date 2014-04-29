
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each {|x| puts "#{x}s"}
puts "-------------------"
puts random_animals.sort
puts "-------------------"
puts random_animals.sort.reverse
puts "-------------------"
random_animals.each {|x| puts "#{x.reverse}"}
puts "-------------------"
puts random_animals.sort_by {|x| x.length}
puts "-------------------"
puts random_animals.sort_by {|x| x[x.length-1]}
puts "abcde"[-2]


