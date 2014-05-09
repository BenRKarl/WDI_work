
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  @num = 1
  erb :index
end

get '/:num' do
  @num = params[:num].to_i
  erb :index
end
