class Card < ActiveRecord::Base
  def self.flush(array)
    suit = array[0].suit
    array.each do |card|
      return false if card.suit != suit
    end
    return true
  end
end
