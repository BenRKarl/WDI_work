random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
#1a)
random_animals.map { |x| x + "s"}.each{|animal| puts animal}
#1b)
random_animals.each{|animal| puts animal+"s"}
#2a)
random_animals.sort
#2b)
random_animals.sort{|x,y| x <=> y}
#3a)
random_animals.sort{|y,x| x <=> y}
#3b)
random_animals.sort.reverse
#4)
random_animals.map { |x| x.reverse}
#5)
random_animals.sort_by{|x| x.length <=> y.length}
#5 Reverse)
random_animals.sort_by{|x| y.length <=> x.length}
#6)
random_animals.sort{|x,y| x|x.length-1} <=> y[y.length-1]}
