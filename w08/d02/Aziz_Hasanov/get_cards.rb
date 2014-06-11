# Write an Active Record query to get all Aces
Card.where(name: "ace");

# Write an Active Record query to get all Spades
Card.where(suit: "spades");

# Write an Active Record quert to return all Jacks
Card.where(name: "jack");

# Write an Active Record query to get all Hearts
Card.where(suit: "hearts");

# Write an Active Record query that orders all cards by name
Card.order(name);

# Write a method that produces a random flush (i.e. 5 cards of the same suit)
def flush
  suit = ["clubs", "spades", "diamonds", "hearts"].sample
  Card.where(suit: suit).sample(5)
end

# Write an Active Record query to find all Jacks and Queens
Card.where("name = ? OR name = ?", "jack", "queen")

# Write an Active Record query to find all cards between 3 and 7 inclusive
Card.where(name: "3".."7")

# Write a method that produces a random straight (i.e 5 cards in consecutive order)





# write a method that takes an array of five cards and returns true if they are all of the same suit

def self.flush(array)
  array.map($:suit).uniq == 1

  # another way
  # array.map{|x| x.suit}.uniq == 1

  # another way
  # hash = Hash.new(0)
  # suit = array.first.suit
  # array.each{|card| hash[card.suit] += 1}
  # hash.keys.length == 1 && hash[suit] == 5
end




