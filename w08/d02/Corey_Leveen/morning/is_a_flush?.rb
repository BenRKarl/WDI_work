def flush_maybe(arr)
  test = []
  arr.each do |x|
    test << x.suit
  end
  test.uniq == 1
end

