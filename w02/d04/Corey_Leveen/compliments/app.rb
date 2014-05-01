require 'bundler/setup'
Bundler.require

get '/' do
  def random_compliment(name)
    rand_num = rand(1..8)
    case rand_num
    when 1
      complmnt = "#{name}..You're pretty cool..man"
    when 2
      complmnt = "#{name}..Looking good..did you get cured?"
    when 3
      complmnt = "#{name}..Nice going! What's your name again?"
    when 4
      complmnt = "#{name}..You're inspirational to some"
    when 5
      complmnt = "#{name}..Nice shoes, no offense"
    when 6
      complmnt = "#{name}..You're pretty good at the coding thing. Do you leave your house?"
    when 7
      complmnt = "#{name}..Your charm makes up for your lack of sanity"
    when 8
      complmnt = "#{name}..I like you"
    end
    @compliment_for_export = complmnt
  end
  erb :compliment
end

post '/names' do
  newname = params[:name]
  redirect "/names?newername=#{newname}"
end

get '/names?:newname' do
  name_to_compliment = params[:newername]
    @color1 = rand(255)
    @color2 = rand(255)
    @color3 = rand(255)
  @finally = random_compliment(name_to_compliment)
  erb :show
end

