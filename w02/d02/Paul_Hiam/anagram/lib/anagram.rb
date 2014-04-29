# Check if two words are anagrams of each other
require 'pry'

def anagram?(word1, word2)
	arr1 = word1.chars.sort
	arr2 = word2.chars.sort
	#match = false
	#tests = []
	
		arr1 == arr2	
	#binding.pry
	#return match

end

def find_anagrams(base, word_arr)
word_arr.select do |word|
	anagram?(base, word)
end
end

#binding.pry

#in pry Matt goes = %w(a a b b c c)
	#gets back an array
	#does arr = _
	#assigns the above returned arrayto arr