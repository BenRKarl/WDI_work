require 'bundler'
Bundler.require

array = (1..1000).to_a


get '/:num' do
  num = params[:num]
  array.select{|num| num % 200 == 0}
end


