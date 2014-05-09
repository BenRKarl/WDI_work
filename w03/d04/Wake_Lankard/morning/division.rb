require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/:num' do
  num = params[:num].to_i
  @arr = []

  (1..1000).each do |x|
    @arr << x if (x % num).zero?
  end
 
  
  erb :index
end
