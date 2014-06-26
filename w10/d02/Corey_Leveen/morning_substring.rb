def find_substring(string, substring)

  count = 0
  i = 0
  while i < string.length + 1
    if string[i] === substring[count]
      count += 1
    else
      count = 0
    end

    if count === substring.length
      return ((i - count)+1)
    elsif i === string.length
      return false
    end
    i += 1
  end
end
