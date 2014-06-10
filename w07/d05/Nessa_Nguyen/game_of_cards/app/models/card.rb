class Card < ActiveRecord::Base

  def self.random_straight
    start = rand(1..13)
    name_array = []
    name_array.push(start)

    (1..4).each do |i| 
      name_array[i] = name_array[i-1] % 13 + 1  
#      if name_array[i] > 13
#        name_array[i] = name_array[i] - 13
#      end    
    end
      
    name_array.map! do |name|
      if name == 1
        name = 'A'
      elsif  name == 11
        name = 'J'
      elsif name == 12
        name = 'Q'
      elsif name == 13
        name = 'K' 
      else 
        name.to_s  
      end             
    end  

    cards = name_array.map do |name|
      Card.where(name: name).sample
    end  

    return cards 
  end

  def self.flush?(array)
    arr = array.map do |card|
      card.suit 
    end
    arr.length == array.length
    # arr.uniq == 1    
  end
  def self.flush_hash(array)
    hash = Hash.new(0)
    suit = array.first.suit
    array.each { |card| hash[card.suit] += 1 }
    hash.keys.length == 1 && hash[suit] == 5
  end

end
