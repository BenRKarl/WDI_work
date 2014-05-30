def word_ladder_neighbors(word)
  word_list.rb.select {|potential_neighbor| is_neighbor?(word,potential_neighbor) }
end


def is_neighbor?(word, potential_neighbor)
  count = 0
  for i in 0..3 do
    count += 1 if word[i] == potential_neighbor[i]
  end
  count == 3
end
# Paul's failed method. def is_neighbor?(word, potential_neighbor)
#   if word.length == potential_neighbor.length

#     count = 0
#     i = 0

#     while i < word.length
#       if word[i] == potential_neighbor[i]
#         count += 1
#       end

#       i += 1
#     end

#     if count == 3
#       return true
#     else
#       return false
#     end

#   else
#    return false
#   end

# end
