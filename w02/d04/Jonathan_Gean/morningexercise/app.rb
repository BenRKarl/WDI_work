require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/submit' do
  submit_name = params[:nameone]
  redirect "/names?name=" + submit_name
end

get '/names' do
  @name = params[:name]
  erb :names
end
