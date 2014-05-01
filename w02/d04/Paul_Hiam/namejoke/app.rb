require 'bundler/setup'
Bundler.require

get '/wow' do

greetings = ["Well you're a sight for sore eyes!", "Who's a good boy? Whooo's a good boooy? YOU ARE! ooooohsnookahsnookah...", "nice kicks play'r", "nice kicks player"]
colors = ["lightblue", "violet", "green", "pink", "blue", "chartreuse", "limegreen", "purple", "red", "purple", "brown", "orange"]
@comp = greetings.sample
@bg = colors.sample

# def hex
# 	(('A'..'F').to_a + (0..9).to_a)
# end
# def @rand_hex 6.times do 
# 	hex.sample.join
# end

erb :index
end



get '/' do

erb :me

end

 post '/names' do
    name = params[:name].gsub(' ', '%20')

     redirect "/names?name=#{name}"
    end
 get '/names' do
	@name = params[:name]
 	greetings = ["Well you're a sight for sore eyes!", "Who's a good boy? Whooo's a good boooy? YOU ARE! ooooohsnookahsnookah...", "nice kicks play'r", "nice kicks player"]
colors = ["lightblue", "violet", "green", "pink", "blue", "chartreuse", "limegreen", "purple", "red", "purple", "brown", "orange"]
@comp = greetings.sample
@bg = colors.sample
erb :show
	
 end

