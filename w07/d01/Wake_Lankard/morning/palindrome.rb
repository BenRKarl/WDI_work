def palindrome?(word)
  word2arr = []
  (word.length-1..0).each do |i|
    word2arr << word[i]
  end
  word2 = word2arr.join('')
  word == word2
  puts word2
end

puts "word?"
word = gets.chomp

puts palindrome?(word)


