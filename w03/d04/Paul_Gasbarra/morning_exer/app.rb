require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/:num' do
  range = (1..100).to_a
  divisor = params[:num].to_i
  @nums = range.select{|num| num % divisor == 0}

  erb :show
end
