require 'bundler/setup'
Bundler.require


def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

  compliments = [
    "You fail english? That's unpossible!",
    "You're inspirational to some",
    "You can conceive a better compliment than Ben",
    "You lip sync like Emma Stone"]

get '/' do

    @compliments = compliments.sample
    @color       = rand_hex_color
  erb :compliment
  end

post '/name' do
  name = params[:user_name].gsub(' ','%20')

  redirect "/name?name=#{name}"

  end

get '/name' do
  @name = params[:name]
  @color = rand_hex_color
  @compliments = compliments.sample

  erb :compliment
  end


