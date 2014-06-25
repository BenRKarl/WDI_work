def find_substring(string, substring)
  if string.include? (substring)
     i = 0
     while (i < string.length) do
      return i if string.slice(i..i + substring.length - 1) == substring
      i += 1
     end
  end
  false
end

# another way
def find_substring(string, substring)
  0.upto(string.length - substring.length) do |i|
    return i if substring == string[i..i + substring.length - 1]
  end
  false
end

# another way
def find_substring(string, substring)
  string.match(substring) ? string.match(substring).begin(0) : false
end

"hello" =~ (/lo/) || false