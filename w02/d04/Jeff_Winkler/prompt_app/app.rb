require 'bundler/setup'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample.to_s
end

def rand_hex_color
  6.times.map{rand_char}.join
end



def compliment
  comps = ["You are awesome!",
           "Who is better than you???",
           "Why are you so fantastic?",
           "Looking good today!"]
  comps.sample
end

get '/' do

  erb :compliment
end

post '/names' do
  query = "?name=#{params["name"].gsub(' ','%20')}"
  redirect "/names#{query}"
end


get '/names' do
  @name = params["name"]
  @nice = compliment
  #@c1 = rand(256)
  #@c2 = rand(256)
  #@c3= rand(256)
  @color = rand_hex_color

  erb :compliment
end

