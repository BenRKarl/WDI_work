require 'bundler'
Bundler.require

  compliments = [
    "You have very smooth hair.",
    "You deserve a promotion.",
    "Good effort!",
    "What a fine sweater!",
    "I appreciate all of your opinions.",
    "I like your style.",
    "Your T-shirt smells fresh.",
    "I love what you've done with the place.",
    "You are like a spring flower; beautiful and vivacious.",
    " I am utterly disarmed by your wit.",
    "I really enjoy the way you pronounce the word 'ruby'.",
    "You complete me.",
    "Well done!",
    "I like your Facebook status.",
    "That looks nice on you.",
    "I like those shoes more than mine.",
    "Nice motor control!",
    "You have a good taste in websites.",
    "Your mouse told me that you have very soft hands.",
    "You are full of ancient wisdom.",
    "I like the way you move.",
    "You have a good web-surfing stance.",
    "You should be a poster child for poster children.",
    "I appreciate you more than Santa appreciates chimney grease."
  ]

def random_background
  "%06x" % (rand * 0xffffff)
end


get '/' do
  # color = "%06x" % (rand * 0xffffff)
  @color=random_background

  erb :index
end

post '/names' do
  person_name = params[:user_name].gsub(' ','%20')
  redirect '/names?name='+person_name
end

get '/names' do
  @name=params[:name]
  @color=random_background


  compliment=compliments.sample
  @compliment=compliment
  erb :show
end
