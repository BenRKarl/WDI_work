require_relative 'word_list'

def is_neighbor?(word, potential_neighbor)
  array1 = word.split('')
  array2 = potential_neighbor.split('')
  count = 0
  for i in (0..3)
    count += 1 if array1[i] == array2[i]
  end
  return true if count == 3
end


def word_ladder_neighbors(word)
  FOUR_LETTER_WORDS.select do |word_compare|
    is_neighbor?(word_compare, word)
  end  
end

puts is_neighbor?("able","ably")
puts word_ladder_neighbors('holy')
