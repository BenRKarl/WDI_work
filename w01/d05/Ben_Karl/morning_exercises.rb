random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

#1
random_animals.each { |animal| print "#{animal}s\n" }

#2
random_animals.sort

#3
random_animals.sort { |x,y| y <=> x }

#4
random_animals.map { |x| x.reverse }

#5
random_animals.sort_by { |x| x.length }

#6
random_animals.sort_by { |x| x[-1, 1] }




