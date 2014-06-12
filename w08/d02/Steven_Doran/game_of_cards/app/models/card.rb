class Card < ActiveRecord::Base

  
  def self.flush(array)

    suit = array[0].suit

    array.each do |card|
      return false if.card != suit
    end

    def self.flush_matt(array)
      array.map(&:suit).uniq == 1
    end

end
end
