var suits = [heart, diamond, club, spade]
suits.sample


var faceCards = [ 11 : jack
                  12 : queen
                  13 : king
                  14 : ace    ]


function flush(arr){
  var cards = arr.sort();
  if arr[0].suit === arr[1].suit === arr[2].suit === suit[3] === suit[4] && Math.min(arr) +1 ===


  $(arr).each {
    if suit
  }
}


class Card < ActiveRecord::Base

# attr_accessor :name, :suite

#   def initialize (name, suite)
#     @name = name
#     @suite = suite
#   end

  def self.flush(array)
    suit = array[0].suit
    array.each do |card|
      return false if card.suit != suit
    end
  end

  def self.flush(array)
    arr = []
    array.each do |x|
      arr << x.suit
    end
    arr.uniq == 1
  end

  def self.flush(array)
    array.map(&:suit).uniq == 1
    # array.map{|x| x.suit}.uniq == 1
  end

  def self.flush(array)
    hash = Hash.new(0)
    suit = array.first.suit
    array.each{|card| hash[card.suit] += 1}
    hash.keys.length == 1 && hash[suit] == 5

end
