require 'bundler'
Bundler.require
require_relative "./kitten"

get '/' do
  @num = 1

  erb :index
end

get '/:num' do
  @num = params[:num]
  @kitten = Kitten.new

  erb :index
end
