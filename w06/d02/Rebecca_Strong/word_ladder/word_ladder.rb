require_relative 'word_list'

def word_ladder_neighbors(word)
FOUR_LETTER_WORDS.select{ |potential_neighbor| is_neighbor?(word, potential_neighbor)}

#we want to select all elements in the array,
# iterate on the elements and
# return all the elements where we expect this to be true.


end

  def is_neighbor?(word, potential_neighbor)
count = 0
for i in 0..3 do count += 1 if word[i] == potential_neighbor

end
count == 3
  end



# word_ladder_neighbors("aloe")
# => ["alae", "alee", "alme", "alow", "floe", "sloe"]

# we need some kind of count
# chosing to count when there are matches
# assume all words have 4 letters

