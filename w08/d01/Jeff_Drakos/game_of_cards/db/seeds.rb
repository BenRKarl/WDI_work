suit = ["Heart", "Spade", "Diamond", "Club"]
name = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]

suit.each do |x|
  name.each do |y|


    Card.create(suit: x, name: y)
  end
end
