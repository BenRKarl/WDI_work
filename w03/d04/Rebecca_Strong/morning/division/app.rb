require 'bundler'
Bundler.require


# get '/' do


# end

# get '/self'

# end

# get '/num' |each| do

# @num = num.map(params[1..1_000])
# @num = num.find

# end

# get '/num:id'

# end

def find_multiples(x)
  arr = (1..1000).to_a
  arr.select{|num| num % x == 0}
end

get '/:num' do
  @arr = find_multiples(params[:num].to_i)

  erb :index
end

# nessas solution

# def find_multiples(x, arr)
#   arr.select{|num| num % x == 0}
# end

# get '/:num' do

#   num = params[:sample_size].to_i
#   arr = (1..num).to_a
#   @arr = find_multiples(params[:num].to_i)
#   erb :index

# end
