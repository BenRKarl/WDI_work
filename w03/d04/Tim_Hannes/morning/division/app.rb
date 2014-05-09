require 'bundler'
Bundler.require

def find_multiples(x, arr)
  arr.select{|num| num % x == 0}
end

get '/:num/:sample_size' do
  num = params[:sample_size].to_i
  arr = (1..num).to_a
  @arr = find_multiples(params[:num].to_i, arr)
  erb :index
end





#need to display numbers 1-1000 that are divisible by parameter number
#array 1-1000;
#numbers.map returns array of num if num % 200 == 0
#.compact
# sweet method
# def find_multiples(x)
#   arr = (1..1000).to_a
#   arr.select{|num| num % x == 0}
# end
