require 'bundler'
Bundler.require

require_relative 'models/user'
require_relative 'models/croak'

require_relative 'config.rb'


get '/' do
  erb :index
end

get '/users/new' do

end

post '/users' do

end
