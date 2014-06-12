def isflush?(arr)
  dif = 0
  suit = arr[0].suit
  arr.each do |card|
    
    if card.suit != suit
      dif += 1
    else
      puts suit
    end
  end
return false if dis > 0

end