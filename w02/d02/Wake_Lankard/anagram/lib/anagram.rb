# Check if two words are anagrams of each other
def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
  

end

def find_anagrams(word, arr)
  # solution = []
  #  arr.each { |x| solution.push(x) if anagram?(x, word) }
  # return solution

  arr.select { |x| anagram?(word, x) }

end

