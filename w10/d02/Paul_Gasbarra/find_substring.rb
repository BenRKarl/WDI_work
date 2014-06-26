def find_substring(string, substring)
  if string.include?(substring)
    i = 0
    while string.include?(substring) do
     string = string[i..-1]
     i += 1
    end
    return i
  else
   return false
  end
end
