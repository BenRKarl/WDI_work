require 'bundler'
Bundler.require


def rand_char 
  char_array = (('A'..'F').to_a + (0..9).to_a).sample
end

def hex_color 
  hex_array = []
  6.times { hex_array.push(rand_char) }
  hex_array.join
end  

compliments = [
    'You are a wonderful person.', 
    'You are so kind.',
    'Did it hurt when you fell from heaven?', 
    'You are smart as hell.']

get '/' do
  @compliment = compliments.sample
  @bgcolor = "##{hex_color}"
  #['#FF5B39', '#CDFF23', '#0096FF', '#FF8AF3'].sample  

  erb :compliment
end

post '/names' do
  name = params[:username].capitalize.gsub(" ","%20")
  redirect "/names?current=#{name}"
end

get '/names' do 
  @compliment = compliments.sample
  @bgcolor = "##{hex_color}"
  #['#FF5B39', '#CDFF23', '#0096FF', '#FF8AF3'].sample  
  @address = params[:current]
  erb :custom
end
