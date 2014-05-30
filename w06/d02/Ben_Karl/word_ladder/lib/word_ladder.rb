require_relative 'word_list'

def word_ladder_neighbors(word)
  FOUR_LETTER_WORDS.select do |four_letter_word|
    is_neighbor?(word, four_letter_word)
    end
end

def is_neighbor?(word, potential_neighbor)
  count = 0
  for i in 0..3 do
    if  word[i] == potential_neighbor[i]
      count += 1
    end
  end
  if count > 2
    true
  else
    false
  end
end


