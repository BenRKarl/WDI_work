
# Check if two words are anagrams of each other

def anangram?(word)
  if word.reverse == word
    return true
  else
    return false
  end
end

puts anangram?("Paul")
puts anangram?("radar")
