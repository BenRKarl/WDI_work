require_relative 'word_list'
require 'pry'



def word_ladder_neighbors(word)
  y = FOUR_LETTER_WORDS.select {|x| is_neighbor?(word, x)}
  puts y.count
  return y
end

def is_neighbor?(word, potential_neighbor)
  count = 0
  for i in 0..3 do
    count += 1 if word[i] == potential_neighbor[i]
  end
  count == 3
end






#x = FOUR_LETTER_WORDS.include?("love")
#puts x


#puts word_ladder_neighbors("live")


# FOUR_LETTER_WORDS.each do |x|
#   z = word_ladder_neighbors(x)
#   if z == 33
#     puts x
#   end
# end

puts word_ladder_neighbors("care")
