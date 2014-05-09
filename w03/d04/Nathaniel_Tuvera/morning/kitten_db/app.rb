require 'bundler'
Bundler.require

require './config.rb' # Runs the code that establishes conneciton to db
require './models/kitten'


get '/kittens/random' do
  @kitten = Kitten.new({:width => rand(100..500), :height => rand(100..500)})
  erb :random
end

get '/' do
  redirect '/kittens'
end

get '/kittens' do
  @kittens = Kitten.all
  erb :index
end

# post -- save to database
post '/kittens' do
  Kitten.create(width: params[:width].to_i, height: params[:height].to_i)
  redirect '/kittens'
end
