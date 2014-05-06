require 'bundler'
Bundler.require

get '/' do
	redirect '/lunches'
end

get '/lunches' do
	erb :index
end

post '/lunches/create' do
	redirect '/lunches'
end

get '/lunches/new' do
	erb :new_lunches
end

get '/lunches/random' do

end