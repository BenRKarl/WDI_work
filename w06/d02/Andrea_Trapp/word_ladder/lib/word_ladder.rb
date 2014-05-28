require_relative 'word_list'

def word_ladder_neighbors(word) 
  FOUR_LETTER_WORDS.select { |potential_neighbor| is_neighbor?(word, potential_neighbor) }
end

# def is_neighbor?(word, potential_neighbor)

#   i = 0
#   counter = 0

#   while (i < word.length)
#     if (word[i] != potential_neighbor[i])
#       counter = counter + 1
#     end
#     i = i + 1
#   end
  
#   if (counter == 1)
#     return true
#   else
#     return false
#   end
  
# end


def is_neighbor?(word, potential_neighbor)

  i = 0
  counter = 0

  while (i < word.length)
    if (word[i] != potential_neighbor[i])
      counter += 1
    end
    i += 1
  end
  
  counter == 1
  
end

