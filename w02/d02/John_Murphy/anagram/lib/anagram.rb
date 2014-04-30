# Check if two words are anagrams of each other

# def anagram?(word_1, word_2)
#   array_1 = word_1.split(//)
#   array_2 = word_2.split(//)
#   count = 0
#   array_1.each {|i| count+=1 if !array_2.include?(i)}
#   count == 0 && array_1.count == array_2.count
# end

def anagram?(word_1, word_2)
  word_1.split(//).sort == word_2.split(//).sort
end


# def find_anagrams(word_1, array)
#   anagrams = []
#   array.each {|i| anagrams<< i if anagram?(i, word_1)}
#   anagrams
# end

def find_anagrams(word_1, array)
  array.select {|i| anagram?(i, word_1)}
end

