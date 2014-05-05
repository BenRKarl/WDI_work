require 'bundler/setup'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample #makes a random number 0-9 and A-F
end

def rand_hex_color
  6.times.map{rand_char}.join #takes 6 of the random char so you can use hex
end

get '/'  do
  rand_compliment = [
    "Your beautiful",
    "Did you lose weight?",
    "I love your eyes",
    "Your a great friend",
    "You're inspirational to some"
    ]

    @compliment=rand_compliment.sample
    @color = rand_hex_color
    erb :index

  end

  post '/names' do
    name = params[:name].gsub(" ","%20") #takes out spaces
    #redirect to person's inputted name
    redirect "/names?name=#{name}"
  end

  get '/names' do
    @name = params[:name]
    @compliment = compliments.sample
    @color = rand_hex_color

    erb :compliment
  end
end
