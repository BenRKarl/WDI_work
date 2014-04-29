require 'sinatra'
require 'sinatra/reloader'

get '/hi' do

  word = ['happy', 'sad', 'joyous'].sample
  "Hello WDI_Proto. You seem #{word}"
end

# Sinatra::Base.send :get, ('/') do
#   "hello, wdi"
# end

#ie. Sinatra is sending the message, from its base, 'get' to a url ('/') saying "hello, wdi"


