Card.delete_all

names = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
suits = ['clubs', 'spades', 'diamonds', 'hearts']

suits.each do |suit| 
  names.each do |name|
    Card.create(name: name, suit: suit)
  end
end
