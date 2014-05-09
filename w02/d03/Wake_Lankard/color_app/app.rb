require 'bundler/setup'
Bundler.require

def color_party
  my_color =HTTParty.get('http://www.colourlovers.com/api/palettes/random')
  title = my_color["palettes"]['palette']['title']
  colors =my_color["palettes"]['palette']['colors']['hex']
  {:title => title, :colors => colors}
end


get '/' do 
  @color_info = color_party
  erb :index
end
