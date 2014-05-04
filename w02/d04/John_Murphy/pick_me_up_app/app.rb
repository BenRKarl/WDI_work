require 'bundler/setup'
Bundler.require

def rand_char
  (('A'..'F').to_a + (0..9).to_a).sample
end

def rand_hex_color
  6.times.map{rand_char}.join
end

get '/' do
  @compliment = ["Hey there good lookin'", "You make everything awesome!", "Without you everything would fall apart. Really. It would.", "Roses are red, violets are blue, you are awesome.", "I wish I could crush life like you."].sample
  @color = rand_hex_color
  erb :index
end


get '/name' do


  @compliment = ["Hey there good lookin'", "You make everything awesome!", "Without you everything would fall apart. Really. It would.", "Roses are red, violets are blue, you are awesome.", "I wish I could crush life like you.", "You play tennis like John McEnroe"].sample
  @color =rand_hex_color
  erb :compliment
end

post '/name' do
  namer = params[:name].gsub(" ", "%20")
  redirect "/namer?input=#{namer}"
end





get '/namer' do
  @name = params[:input]
  @compliment = ["Hey there good lookin'", "You make everything awesome!", "Without you everything would fall apart. Really. It would.", "Roses are red, violets are blue, you are awesome.", "I wish I could crush life like you.", "You play tennis like John McEnroe."].sample
  @color = rand_hex_color
  erb :output

end



