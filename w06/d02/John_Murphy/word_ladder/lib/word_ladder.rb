require_relative 'word_list'

def word_ladder_neighbors(word)
 FOUR_LETTER_WORDS.select{|neighbor| is_neighbor?(word, neighbor)}
end

# def is_neighbor?(word, potential_neighbor)
#   word != potential_neighbor && (word.split(//).count == potential_neighbor.split(//).count && word.split(//).delete{|letter| potential_neighbor.split(//).include?(letter)} == 1)
# end

def is_neighbor?(word, potential_neighbor)
  count = 0
  for i in 0..3 do
    count += 1 if word[i] == potential_neighbor[i]
  end
  count == 3
end


