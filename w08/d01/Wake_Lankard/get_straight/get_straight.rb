
def get_straight()
  namesArr = ["ace","two","three","four","five","six","seven","eight","nine","ten","jack","queen","king","ace"]
  suitsArr = ["hearts","spades","diamonds","clubs"]

  cardName = namesArr[0..9].sample
  cardSuit = suitsArr.sample

  handArr = []

  5.times do
    handArr << Card.where( "name = ? AND suit = ?", cardName, cardSuit)
    cardIndex = namesArr.index(cardName) + 1
    cardName = namesArr[cardIndex]
    cardSuit = suitsArr.sample
  end
  handArr
end




