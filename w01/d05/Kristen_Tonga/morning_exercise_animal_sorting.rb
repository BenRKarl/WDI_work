#sort alphabetically a to z
random_animals.sort
random_animals.sort{|x,y| x <=> y}

#sort alphabetically z to a
random_animals.sort.reverse
random_animals.sort{|x,y| y <=> x}

#individual strings/words reversed
random_animals.map{|x,y| x.reverse}

#sort by word length (low to high)
random_animals.sort_by{|x| x.length}
random_animals.sort{|x, y| x.length <=> y.length}

#sort by word length (high to low)
random_animals.sort{|x, y| y.length <=> x.length}

#sort alphabetically by last letter in string
random_animals.sort{|x,y| x[-1]<=> y[y.length-1]}
random_animals.sort_by{|x| x[-1]}
