class Card < ActiveRecord::Base

  def self.flush_john(array)
    suit = array[0].suit
    array.each do |card|    
      return false if card.suit != suit
    end
    return true
  end
  
  def self.flush_corey(array)
    arr = []
    array.each do |card|    
      arr << card.suit
    end
    arr.uniq == 1 
  end

  def self.flush_matt(array)
    array.map(&:suit).uniq == 1
    #array.map{|x| x.suit}.uniq == 1
  end


end
