require 'bundler/setup'
Bundler.require

get '/' do
  erb :index
end

post '/submit' do
  query = params.map do |key, value|
    "#{key}=#{value.gsub(' ','%20')}"
  end.join("&")
  redirect "/show?#{query}"
end

get '/show' do
  @thisans = params["person"]
  erb :show
end
