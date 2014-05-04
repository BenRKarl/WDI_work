require 'bundler/setup'
Bundler.require

get '/' do

erb :root
#sinatra rejecting erb :root Why?
end

get '/links' do
  @link = link
  #I don't think I need params, here, bcs link rather than input?



end



