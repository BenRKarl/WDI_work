require "bundler/setup"
Bundler.require

get '/' do
  'test'
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  erb :show
end
