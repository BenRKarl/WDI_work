require_relative 'word_list'

def word_ladder_neighbors()
	FOUR_LETTER_WORDS.select{|potential_neighbor| is_neighbor?(word, potential_neighbor)}
end

def is_neighbor?(play,work)
 count = 0
 for i in 0..3 do
   count += 1 if word [i] == potential_neighbor [] 	
 end
 count == 3
end

#when theres only one mismatch or three matches