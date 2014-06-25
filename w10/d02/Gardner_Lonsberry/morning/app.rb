#me
def find_substring(string, substring)
  if string.include?(substring)
    puts substring
  else
    return 'False'
  end
end

#matt
def find_substring_2(string, substring)
  0.upto(string.length - substring.length) do |i|
    return i if substring == string[i..i+substring.length-1]
  end
  false
end


#winkler
def fs3(a, b)
  (a=~/#{b}/) == nil ? false: (a=~/#{b}/)
end






