# Active record commands practice

# All aces -
Card.where(name: “A”)
# All spades -
Card.where(suit: “spades”)
# All jacks -
Card.where(name: “J”)
# Orders all cards by name -
Card.order(:name)
# Random flush -

def flush
  suit = ["hearts", "diamonds", "clubs", "spades"]
  Card.where(suit: suit).sample(5)
end


# All jacks and queens -
Card.where("name = ? OR name = ?", "jack", "queen")

# Cards from 3 to 7 inclusive
Card.where(name: "3".."7")

# Method that produces a random straight