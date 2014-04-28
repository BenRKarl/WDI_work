random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]


random_animals.each {|i| puts i + "s"}

random_animals.sort
# random_animals { |x,y| x <=> y }
random_animals.sort.reverse
# random_animals { |x,y| y <=> x }
random_animals.map {|i| i.reverse}

random_animals.sort_by {|y| y.length}
# random_animals.sort {|x,y| x.length <=> y.length}

random_animals.map {|i| i.reverse}.sort.map {|i| i.reverse}
# random_animals.sort{|x,y| x[-1] <=> y[y.length-1]}
# random_animals.sort{|x,y| x[-1] <=> y[-1]}
