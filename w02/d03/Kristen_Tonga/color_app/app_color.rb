require 'bundler'
Bundler.require

def color_party
  my_colors = HTTParty.get('http://www.colourlovers.com/api/palettes/random')
  title = my_colors['palettes']['palette']['title']
  colors = my_colors['palettes']['palette']['colors']['hex']
  {:title => title, :colors => colors}
end

get '/' do
  @color_info = color_party
  erb :index
end
