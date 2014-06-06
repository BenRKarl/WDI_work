suits = ["clubs", "spades", "diamonds", "hearts"]
names = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

suits.each do |x|
  names.each do |y|
  Card.create(suit: x, name: y)
  end
end
