

def anagram
  if 'x'.length == 'y'.length
    {"char"} == {"char"}
    puts 'true'
  elsif 'x'.length != 'y'.length
    {"char"} != {"char"}
    puts 'false'
  elsif {"chars"} == {"chars"}
    'x'.length != 'y'.length
    puts 'false'
end

def find_anagrams
  if 'x'.length != 'y'.length
    {"chars"} != {"chars"}
    puts 'nil'
elsif {"chars"} =


  #Matt's solution:
  def anagram? (word_1, word_2)
    word_1.chars.sort == word_2.chars.sort
  end

def find_anagrams (base_word, word_arr)
  word_arr.select do |word|
  anagram?(base_word, word)
