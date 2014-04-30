# Check if two words are anagrams of each other

def anagram?(word1, word2)
  array1 = word1.split("").sort
  array2 = word2.split("").sort  
  if array1 == array2
  	true
  else 
   	false
  end
end  	



def find_anagram(word1, array)
  letters1 = word1.split("").sort
  array.select { |word| word.split("").sort == letters1 }
  # anagram?(word, word1) 
  
end	

puts anagram?('bend', 'ebn')

puts find_anagram('listen', ['enlist', 'google', 'inlets', 'enlists'])
