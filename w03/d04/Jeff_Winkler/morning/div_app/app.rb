
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/:num'do

  num = params[:num].to_i
  @div_arr = []

  1000.times do |x|
    if (x+1) % num == 0
      @div_arr << x+1
    end
  end

  erb :index

end


