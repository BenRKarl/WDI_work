require 'bundler/setup'
Bundler.require

get '/' do
  erb :root
end

get '/books/:name' do
  @name = params[:name]
  erb :show
end



# get '/random' do
# end

# get '/id' do
# end
