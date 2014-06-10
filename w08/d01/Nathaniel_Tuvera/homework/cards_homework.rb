suit =['Hearts', 'Diamonds', 'Clubs', 'Spades']
count=[0,1,2,3,4,5,6,7]

Card.where(:suit => suit.sample).limit(5).offset(count.sample)
