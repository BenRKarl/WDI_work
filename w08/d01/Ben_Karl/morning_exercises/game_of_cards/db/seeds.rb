names = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = [' of Hearts', ' of Spades', ' of Diamonds', ' of Clubs']

for i in names
  for j in suits
    Card.create(name: i, suit: j)
  end
end

