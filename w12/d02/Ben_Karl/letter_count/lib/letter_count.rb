require 'pry'

def letter_count(string)
  count = Hash.new
  array = string.downcase.gsub(" ", "").split('')
  array.each do |letter|
    count[letter] == nil ? count[letter] = 1 : count[letter] += 1
  end
  count
end


puts letter_count("cow")
