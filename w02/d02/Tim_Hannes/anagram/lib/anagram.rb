# Check if two words are anagrams of each other

def anagram?(word_1, word_2)
  word_1.chars.sort == word_2.chars.sort #are the characters in word 1 = to word 2?
end

def find_anagrams(base_word, word_arr)
  word_arr.select do |word| #.select returns a hash in which the block returns true
    anagram?(base_word, word)
  end
end

