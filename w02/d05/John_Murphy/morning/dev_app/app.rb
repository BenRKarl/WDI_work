require 'bundler/setup'
require_relative 'naming.rb'
Bundler.require

get '/' do
  redirect '/developers'
end


get '/developers' do

  @sorted = define
  erb :index

end
