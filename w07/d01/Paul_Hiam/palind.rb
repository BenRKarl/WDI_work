def palindrome(string)
  word = string.gsub(' ', '')
    word.downcase == word.reverse.downcase
end
