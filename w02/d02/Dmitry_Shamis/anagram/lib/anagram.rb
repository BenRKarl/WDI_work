# Check if two words are anagrams of each other
def anagram?(word_1, word_2)
  word_1 = word_1.chars.sort
  word_2 = word_2.chars.sort
  if word_1 == word_2
    return true
  else
    return false
  end
end

def find_anagrams(base_word, word_arr)
  word_arr.select {|word| anagram?(base_word, word)}
end
