require 'bundler'
Bundler.require

def find_multiples(x)
  arr = (1..1000).to_a
  arr.select{|number| number % x == 0}
end

get '/' do
  redirect '/1'
end

get '/:num' do
  @arr = find_multiples(params[:num].to_i)
  erb :show
end

#DIVIDED BY 2
# get '/:num/:sample_size' do
#   num = params[:sample_size].to_i
#   arr = (1..num).to_a
#   @arr = find_multiples(params[:num].to_i, arr)
#   erb :index
# end

#INCOMPLETE OF CLASS
  # @num = params[:num].to_i
  # arr = [*1..1000]
  # arr.map{|number| number if number % :num == 0}.compact
  # arr.select{|num| num % 200 == 0}

#FAILED/INCOMPLETE LOGIC
  # thousand.each  {|divisor| divisor % :num == remainder}
  # if division = 0
  #   return divisor
  # else
  # end
  # erb :show

