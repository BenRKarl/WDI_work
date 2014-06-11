def flush?(cardArr)
  cardHash = {}
  cardArr.each do |card|
    cardHash[card.suit] = card.name
  end
  return true of cardHash.keys.length == 1
end

cardArr = Card.where(suit: "hearts")
flush?(cardArr)