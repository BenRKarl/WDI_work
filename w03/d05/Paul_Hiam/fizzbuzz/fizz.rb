
@arr = (1..100).to_a

@fizz = arr.select{|x| if x % 3 == 0}
@buzz = arr.select{|x| x % 5 == 0}
@fizzbuzz = []

@arr.each do |x|
  if @fizz.include?(x)
    x == 'fizz'
    @fizzbuzz << x
  elsif @buzz.include?(x)
    x == 'buzz'
    @fizzbuzz << x
  elsif @fizz.include?(x) && @buzz.include?(x)
    x == 'fizzbuzz'
    @fizzbuzz << x 
  else
    @fizzbuzz << x   
  end
  
end
  
