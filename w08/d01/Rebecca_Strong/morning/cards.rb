def flush
    suit = ["hearts", "diamonds", "clubs", "spades"].sample
    Card.where(suit: suit).sample(5)
end


# Write a method that produces a random straight (i.e 5 cards in consecutive order)
# def straight
#     straight = ["ace", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "jack", "queen", "king"].sample
#     Card.group(name: name).sample(5)
# end

def straight_flush_jon(array)

suit = array[0].suit
array.each do |card|
  return false if card.suit != suit
end
return true

end


def straight_flush_corey(array)
  arr = []
  array.each do |x|
    arr << x.suit
  end
  arr.uniq == 1
  #boolean
end

def straight_flush_matt(array)
  array.map(&:suit).uniq == 1
  # where '&'' gives a block, collecting all the suits
end
#

#to exploit the features of a hash
def straight_flush_wake(array)
  #to initialize the hash use '.new'
  hash = Hash.new(0)
  suit = array.first.suit
  #to get suit to increment
  array.each{|card| hash[card.suit] +=1}
  hash.keys.length == 1 && hash [suit] == 5
end


