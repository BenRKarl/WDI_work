require 'bundler/setup'
Bundler.require

get '/' do
	"yo"
end
get '/:num' do
  @num = params[:num].to_i
  i = 2
  @result = []
  @product = @num
  while @product + @num <= 1000
   
  @product = i * @num
  @result << @product
  i += 1  
  end
  
  erb :num

  
end

##### or do something with sample like this, which doesn't work...?



get '/short/:num' do
  @arr = find_mult(params[:num].to_i)


def find_mult(x)
  arr = (1..1000).to_a
  arr.select{|num| num % x == 0}
  end 
  
erb :other
end
