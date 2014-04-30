random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]
random_animals.each { |x| puts x + "s"}
puts random_animals.sort or random_animals { |x,y| x<=>y}
random_animals.sort.reverse or random_animals { |x,y| y<=>x}
random_animals.map{ |x| x.reverse}
random_animals.sort_by{|x| x.length} or random_animals.sort{|x,y| y.length<=>x.length}
random_animals.sort{|x,y| x[-1] <=> y[y.length-1]}


