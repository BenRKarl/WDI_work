def same_suit(array)
  suit = array[0].suit

  array.each do |card|
    return false if card.suit != suit
  end

  return true

end

def flush_corey(array)
  arr = []
  array.each do |x|
    arr << x.suit
  end
  arr.uniq == 1
end

def flush_matt(array)
  array.map(&:suit).uniq == 1
  # array.map{|x| x.suit}.uniq == 1
end
