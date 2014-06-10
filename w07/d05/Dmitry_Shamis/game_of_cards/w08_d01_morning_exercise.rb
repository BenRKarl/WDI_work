## Write an Active Record query to get all Aces
Card.where(name: "A")

## Write an Active Record query to get all Spades
Card.where(suit: "♠")

## Write an Active Record quert to return all Jacks
Card.where(name: "J")

## Write an Active Record query to get all Hearts
Card.where(suit: "♡")

## Write an Active Record query that orders all cards by name
Card.order("name")

## Write a method that produces a random flush (i.e. 5 cards of the same suit)
def random_flush
  suit = ["♠", "♣", "♡", "♢"].sample
  Card.where(suit: suit).sample(5)
end

## Write an Active Record query to find all Jacks and Queens
Card.where("name = ? OR name = ?", "J", "Q")

## Write an Active Record query to find all cards between 3 and 7 inclusive.
Card.where(name: "3".."7")

## Write a method that produces a random straight (i.e 5 cards in consecutive order)
def random_straight
  name = ["2", "3", "4", "5", "6"].sample
  straight = []
  straight << Card.where("name = ? AND suit = ?", (name), (["♠", "♣", "♡", "♢"].sample))
  straight << Card.where("name = ? AND suit = ?", ((name.to_i)+1).to_s, (["♠", "♣", "♡", "♢"].sample))
  straight << Card.where("name = ? AND suit = ?", ((name.to_i)+2).to_s, (["♠", "♣", "♡", "♢"].sample))
  straight << Card.where("name = ? AND suit = ?", ((name.to_i)+3).to_s, (["♠", "♣", "♡", "♢"].sample))
  straight << Card.where("name = ? AND suit = ?", ((name.to_i)+4).to_s, (["♠", "♣", "♡", "♢"].sample))
  straight
end
