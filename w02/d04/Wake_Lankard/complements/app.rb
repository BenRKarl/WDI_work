require 'bundler/setup'
Bundler.require

def random_color
  arr = [ 1,2,3,4,5,6,7,8,9,"a","b","c","e","d","f" ]
  6.times.map {arr.sample}.join
end

get '/' do

erb :index
end

post '/great' do

  person_name = params[:user_name].gsub(" ","%20")
  redirect '/great?person_name=' + person_name

end

get '/great' do
  @person_name = params[:person_name]
  @color = random_color
  
  @compliment = ["you are awesome, #{@person_name}", 
                "Nobody does it better, #{@person_name}.",
                "You are not as short as you look, #{@person_name}."].sample

  erb :index

end

