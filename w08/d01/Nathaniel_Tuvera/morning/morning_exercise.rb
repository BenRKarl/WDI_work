Card.where name: 'A'

Card.where suit: 'Spades'

Card.where name: 'J'

Card.where suit: 'Hearts'

Card.order(:name)


def flush
  suit =["Hearts", "Diamonds", "Clubs", "Spades"].sample
  Card.where(suit: suit).sample(5)
end

# --------- Bonus ----------------

Card.where("name = ? OR name = ?", "jack", "queen")

Card.where(name: "3".."7")

# -------- Save for tomorrow ---------
def straight
  cards = [""]
end
