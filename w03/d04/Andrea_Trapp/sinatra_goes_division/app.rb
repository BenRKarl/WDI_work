require 'bundler'
Bundler.require



# index
get '/' do
  erb :index
end

get '/:num' do 
  num = params[:num].to_i  
  @numbers = (1..1000).to_a
  @numbers.select { |number| number%num==0 }

  erb :result
end


# require 'bundler'
# Bundler.require

# def find_multiples(x, arr)
#   arr.select{|num| num % x == 0}
# end


# get '/:num/:sample_size' do
#   num = params[:sample_size].to_i
#   arr = (1..num).to_a
#   @arr = find_multiples(params[:num].to_i, arr)
#   erb :index
# end