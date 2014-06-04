def palindrome?(string)
  string.downcase!
  string.gsub!(' ','')
  string === string.reverse
end

puts palindrome?('madam')
puts palindrome?('like')
