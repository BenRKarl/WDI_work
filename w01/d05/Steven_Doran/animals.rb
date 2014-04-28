


animals = ["porpoise", "camel", "lobster", "kangaroo", "wombat", "chameleon"]

# * Print out a plural version of each animal on a new line(ie porpoises, camels, etc)
animals.each { |animal| puts animal + "s"}

# * Return an array of the animals sorted alphabetically
animals.sort
animals.sort { |x, y| x <=> y}

# * Return an array of the animals sorted reverse alphabetically
animals.sort.reverse
animals.sort { |x, y| y <=> x }

# * Return an array of the animals with each individual string reversed
animals.map { |animal| animal.reverse }

# * Return an array of the animals sorted by word length (low to high)
animals.sort_by { |animal| animal.length}
animals.sort { |x, y| x.length <=> y.length }

# * Return an array of the animals sorted by word length (high to low)
animals.sort_by { |animal| animal.length}.reverse
animals.sort { |x, y| y.length <=> x.length }

# * Return an array of the animals sorted alphabetically by the last character in the string
animals.sort_by { |animal| animal[-1,1] }
animals.sort { |x, y| x[-1] <=> y[y.length-1] }



# WHAT'S AN ENUMERABLE??