# method that takes an array of five cards and returns true if they are all the same suit (i.e. a flush):

def flush_check(array)
  suit = array[0].suit
  array.each do |card|
    return false if card.suit != suit
  end
  return true
end

def flush_check_1(array)
  arr = []
  array.each do |x|
    arr << x.suit
  end
  arr.uniq == 1
end

def flush_check_2
  array.map(&:suit).uniq == 1
  # ABOVE LINE IS THE SAME AS:
  # array.map{|x| x.suit}.uniq == 1
end

def flush_check_3
  hash = Hash.new(0) # better than hash = {}
  suit = array.first.suit
  array.each{|card| hash[card.suit] += 1}
  hash.keys.length == 1 && hash[suit] == 5
end

5_random_cards = Card.all.sample(5)
