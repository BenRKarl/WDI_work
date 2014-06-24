require 'pry'
def find_substring(string, substring) # needs fix for full match
  if string.include? substring
    return (string.split(substring)[0].length)
  else
    return false
  end
end

binding.pry


# matt
def find_substring_2(string, substring)
  0.upto(string.length - substring.length) do |i|
    return i if substring == string[i..i+substring.length-1]
  end
  false
end

# matt one liner
def find_substring_4(string, substring)
  string.match(substring) ? string.match(substring).begin(0) : false
end
