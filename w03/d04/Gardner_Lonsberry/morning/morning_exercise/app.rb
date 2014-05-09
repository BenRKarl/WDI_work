require 'bundler'
Bundler.require


def find_multiples(x)
    arr = (1..1000).to_a
    arr.select{|num| num % x == 0}
end


get '/:num' do
  @arr = find_multiples(params[:num].to_i)
  erb :index
end
