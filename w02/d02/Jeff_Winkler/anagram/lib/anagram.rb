# Check if two words are anagrams of each other

def anagram?(w1, w2)
  w1.downcase.split("").sort!.join == w2.downcase.split("").sort!.join
end

def find_anagrams(word, word_ar)
  sorted = word_ar.select {|x| anagram?(word,x)}
end




