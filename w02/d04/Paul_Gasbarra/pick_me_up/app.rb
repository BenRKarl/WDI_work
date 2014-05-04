require 'bundler/setup'
Bundler.require

def rand_color

end

get '/' do
@compliment = ["You are the bees knees!", "Your smile lights up a room.", "You are the hottest one for years of night."].sample
@color = rand_color
erb :compliment
end

post '/' do
  name = params[:user_name]
  redirect "names?being_name=#{user_name}"
end

get '/names?being_name=#{user_name}' do
  @name = params[being_name]
  erb :name
end
