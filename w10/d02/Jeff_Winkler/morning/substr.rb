


def find_substring(a, b)
  newstr = a.gsub(b, "*");
  return false if newstr == a
  l = newstr.length
  for counter in 0..l-1
    if newstr[counter] == '*'
      return counter
    end
  end
end


puts find_substring("hello", "ll")
puts find_substring("groovy", "oo")
puts find_substring("far out", "ar")
puts find_substring("hello", "o")

def fs2(a, b)
  return false if (a=~/#{b}/) == nil else return (a=~/#{b}/)
end

puts fs2("hello", "ll")
puts fs2("hello", "x")

def fs3(a, b)
  (a=~/#{b}/) == nil ? false: (a=~/#{b}/)
end




puts fs3("hello", "ll")
puts fs3("hello", "x")
puts fs3("groovy", "oo")
