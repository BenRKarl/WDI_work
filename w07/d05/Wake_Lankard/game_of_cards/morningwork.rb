suit = ["spades", "clubs","hearts", "diamonds"].sample
cardsArr = Card.where(suit: suit)

flushArr = []
5.times {
  flushArr << cardsArr.sample
}
