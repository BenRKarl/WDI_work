require 'bundler'
Bundler.require

get '/' do
  erb :index
end

get '/palettes.json' do
  content_type :json
  data = HTTParty.get('http://www.colourlovers.com/api/palettes/new?format=json')
  data.to_json
end


# $.ajax({url: '/palettes.json', success:function(data){console.log(data)}})