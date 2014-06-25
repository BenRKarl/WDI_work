def string_finder(string, sub_string)
  i = 0
  while i < string.length
    if sub_string[0] == string[i]
      y = i
      x = 0
      result = 0
      while x < sub_string.length
        if string[y] != sub_string[x]
          result += 1
        end
        x += 1
        y += 1
      end
      if result == 0
        return i
      end
    end
    i += 1
  end
  return false
end
