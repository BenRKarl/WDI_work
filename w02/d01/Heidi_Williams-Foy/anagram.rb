@words_hash = words.each_with_object(Hash.new []) do |word, hash|
  hash[word.chars.sort] += [word]
end

def anagram?(word_1, word_2)
	word_1_chars.sort == word_2.chars.sort
end

def find_anagrams(base_word, word_arr)
	word_arr.select do |word|
		anagram?(base_word, word)
	end
		
	end