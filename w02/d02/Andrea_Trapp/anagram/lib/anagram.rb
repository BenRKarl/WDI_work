# Check if two words are anagrams of each other

def anagram?(word1, word2)

	word1.chars.sort == word2.chars.sort ? true : false

end

def find_anagrams(word, words)

	words.select do |lword|
		anagram?(word, lword)
	end

end
	
# anagram?("listen","enlist")
# anagram?("listen",["enlist", "listen", "hello", "test"])


