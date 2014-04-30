# Check if two words are anagrams of each other


def anagram?(word, test)
  word.chars.sort == test.chars.sort
end

def find_anagrams(word, test_arr)
  test_arr.select { |test_word| anagram?(word, test_word) }
end