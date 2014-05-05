require "bundler/setup"
Bundler.require

def random_char
	(("A".."F").to_a + (0..9).to_a).sample
end

def random_color
	# combines random_char array into a sinfle solid string
	6.times.map{random_char}.join
end

get '/' do
	@compliment = ["u r rock star", "u so good ur credit score has 4 number in it", "u look great", "u doin fantastic", "no1s better than u", "did i tell u u'r genius"].sample
	@color = random_color # rand(999999).to_s
	erb :compliment
end

post '/feeling' do
	@answer = params[:question].gsub(" ", "%20")
	# code above pulls the input from form in erb file
	redirect "/feeling?smth=#{@answer}"
end

get '/feeling' do
	# binding.pry
	@feel_better = params[:smth]
	@color
	@compliment
	erb :show
end