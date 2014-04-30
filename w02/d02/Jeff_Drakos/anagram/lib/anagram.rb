# Check if two words are anagrams of each other
def anagram?(x,y)
if x.chars.sort == y.chars.sort
  true
else
  false
end
end

def find_anagrams(word_1, word_arr)
  word_arr.select do |word|
    anagram?(word_1, word)
  end
end

