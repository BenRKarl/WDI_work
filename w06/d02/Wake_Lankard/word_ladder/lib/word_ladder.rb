require_relative 'word_list'

def word_ladder_neighbors(word)

  FOUR_LETTER_WORDS.select { |list_word| is_neighbor?(word, list_word) }



end

def is_neighbor?(word, potential_neighbor)
  dif = 0
  (0..word.length).each do |i|
    dif += 1 if word[i] != potential_neighbor[i]

  end
  dif == 1


end

def thirtythree
  FOUR_LETTER_WORDS.each do |word|
    return word if word_ladder_neighbors(word).length == 33
  end
end



puts thirtythree


