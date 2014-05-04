require 'bundler'
Bundler.require

def rand_char
	colour = "%06x" % (rand * 0xffffff)
end

def rand_hex_color
	6.times.map{rand_char}.join
end

get '/' do
compliment = [
"You look good today", 
"Nice going", 
"You're very tall"
]
end

@compliment = compliments.sample
@color = rand_hex_color

erb :compliment
end