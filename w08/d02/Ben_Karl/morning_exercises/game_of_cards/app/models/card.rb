class Card < ActiveRecord::Base


def self.is_flush(array)
  suit_array = []
  array.each do |card|
    suit_array << card.suit
  end
  suit_array.uniq.length == 1
end

flush = Card.where(suit: " of Hearts").sample(5)
Card.is_flush(flush)
=> true

end
