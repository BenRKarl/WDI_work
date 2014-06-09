
suits = ['clubs', 'spades', 'hearts', 'diamonds']
names = ['ace', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'jack', 'queen', 'king']

suits.each do |i|
  names.each do |j|
    Card.create(suit: i, name: j)
  end
end

