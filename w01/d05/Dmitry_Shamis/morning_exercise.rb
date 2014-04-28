
random_animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

random_animals.each { |x| puts x+"s" }

random_animals.sort

random_animals.sort { |x,y| y <=> x }

random_animals.map { |x| x.reverse }

random_animals.sort_by { |x| x.length }
OR
random_animals.sort_by { |x,y| x.length <=> y.length }

random_animals.sort { |x,y| x[x.length-1] <=> y[y.length-1] }
