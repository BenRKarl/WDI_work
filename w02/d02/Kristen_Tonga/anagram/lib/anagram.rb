<<<<<<< HEAD
listen = ["enlists", "google", "inlets","bannana"]

def anagram?(word_1, word_2)
  word_1.char.sort = word_2.char.sort
  end

  def find_anagrams (base_word, word_arr)
    word_arr.select do |word|
      anagram?(base_word, word)
    end
end

=begin

 ANOTHER OPTION: BUT IT DOESN"T WORK
  def coreys_anagram?(word_1, word_2)
    word_1.chars.sort
  while arr.length > 0
    sub_array = arr.shift(2)
    return false if sub_array.first != sub_array.last
  end

=end
=======
# Check if two words are anagrams of each other
>>>>>>> 240f51101b497b5e115daf7cc1b4c6c2a41663ac
