
suits = ["hearts", "clubs", "spades", "diamonds"]
cards = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]


suits.each do |suit|
  cards.each do |card|
    Card.create(suit: suit, name: card)
  end
end

