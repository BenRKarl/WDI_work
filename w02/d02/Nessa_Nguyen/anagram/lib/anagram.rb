# Check if two words are anagrams of each other

def anagram?(word1, word2)
  array1 = word1.split("").sort! 
  array2 = word2.split("").sort!  
  if array1 == array2
  	true
  else 
   	false
  end
end  	



def find_anagram(word, array)


end	

puts anagram?('bend', 'ebn')
