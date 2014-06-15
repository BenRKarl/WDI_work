class Card < ActiveRecord::Base
  def self.flush(array)
    suit = array[0].suit
    array.each do |card|
      return false if card.suit != suit
    end
    return true
  end

  def self.flush_corey(array)
    arr = []
    array.each do |x|
      arr << x.suit
    end
    arr.uniq == 1
  end
end
