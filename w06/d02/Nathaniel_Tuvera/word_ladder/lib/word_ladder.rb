require_relative 'word_list'

def word_ladder_neighbors(word)
  FOUR_LETTER_WORDS.select{|potential_neighbor| is_neighbor?(word, potential_neighbor)}
end

def is_neighbor?(word, potential_neighbor)
  count = 0
  for i in 0..3 do
    count += 1 if word[i] == potential_neighbor[i]
    end
  count == 3
end

#   @array1 = word.split(//)
#   @array2 = potential_neighbor.split(//)
#   @intersection = @array1 & @array2
#   if @intersection.size == 3
#     return true
#     else
#     return false
#   end
# end




