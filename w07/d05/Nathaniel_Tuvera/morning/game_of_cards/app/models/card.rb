class Card < ActiveRecord::Base
  def self.flush_john(array)
    suit=array[0].suit
    array.ea do |card|
      return false if card.suit != suit
    end
    return true
  end

  def self.flush_corey(array)
    arr =[]
    array.each do |x|
      arr << x.suit
    end
    array.uniq == 1
  end

  def self.flush_matt(array)
    array.map(&:suit).uniq == 1
    # array.map{|x| x.suit}.uniq == 1
  end

  def flush_aziz(array)
    array.uniq.length != array.length ? false : true
  end

  def self.flush_wake(array)
    hash = Hash.new(0)
    array.each{|card| has[card.suit] += 1}
    hash.keys.length == 1 && hash[suit] == 5
  end
end
