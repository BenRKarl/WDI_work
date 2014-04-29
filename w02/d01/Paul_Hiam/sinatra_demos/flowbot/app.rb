require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
	erb :start

end


get '/funds' do
	erb :funds

end

get '/idea' do
	erb :idea

end

get '/more' do
	erb :more

end
get '/raise' do
	erb :raise

end