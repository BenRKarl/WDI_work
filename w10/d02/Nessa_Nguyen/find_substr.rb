def find_substring(string, substring)
  if string.include? substring
    i = 0
    while i < string.length do
      puts i if string.slice(i, substring.length) == substring
      i += 1
    end
  end
  return false
end

find_substring('hello', 'lo')

def find_sub(string, substring)
  0.upto(string.length - substring.length) do |i|
    puts i if substring == string[i, substring.length]
  end
  false
end

find_sub('chartreusse', 'sse')


def find_substr(string, substring)
  data = string.match(substring)
  data.begin(0)
end
