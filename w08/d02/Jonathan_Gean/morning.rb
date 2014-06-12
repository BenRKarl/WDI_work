def fivecardflush(array)
  if array[0].suit == array[1].suit && array[1].suit == array[2].suit && array[2].suit == array[3].suit && array[3].suit == array[4].suit
    return true
    else return false
  end
end
