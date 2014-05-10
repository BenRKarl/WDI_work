require 'bundler/setup'
Bundler.require

get'/' do
  erb :root
end

post '/submit' do #specifically wrote post, here
#SOMETHING HAS TO GO HERE, BUT WHAT?
#HELP ME OBI-WAN, YOU ARE MY ONLY HOPE.

# params: { "greeting" => "Help me Obi_Wan"}
# ["greeting=Help me Obi-Wan"]
query = params.map do |key, value|
  "#{key}=#{value}"
end.join("&")

redirect "/success?#{query}"
end
get '/success' do
  @greeting = params["greeting"]
erb :success

end
