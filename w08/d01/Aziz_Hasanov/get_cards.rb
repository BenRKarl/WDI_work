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
