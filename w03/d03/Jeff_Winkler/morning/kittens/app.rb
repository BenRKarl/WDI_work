require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/:num_kittens' do

  num = params[:num_kittens].to_i

  @url = []

  num.times do

    rand_width = rand(50..200)
    rand_height = rand(50..200)
    @url << "http://placekitten.com/#{rand_width}/#{rand_height}"

  end

  erb :index
end
