names = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
suits = ["Hearts", "Clubs", "Spades", "Diamonds"]

suits.each do |suit|
  names.each do |name|
    Card.create(suit: suit, name: name)
  end
end