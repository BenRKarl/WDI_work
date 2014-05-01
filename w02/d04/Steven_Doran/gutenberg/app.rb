require 'bundler/setup'
Bundler.require

get '/' do 
  erb :root
end

get '/books/:name' do 
  params[:name]

end
