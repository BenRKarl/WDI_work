
i = 0
1.upto(1000) do |n|
  if n % 3 == 0
    i += n
  elsif n % 5 == 0
    i += n
  end
end

((1..1000).to_a.select {|x| x if x % 3 == 0 || x % 5 == 0}).to_a.sum