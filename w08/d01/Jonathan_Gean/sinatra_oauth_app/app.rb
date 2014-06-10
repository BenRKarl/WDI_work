require 'sinatra'
require 'omniauth-twitter'


get "/" do
  erb :index
  redirect "localhost:4567/auth/twitter"
end

# OmniAuth::Builder do
#   provider :twitter, "d9MzKyWBvtREqytZjKzEwxkl3", "iJ5jRoAPcyP9oouNvDuQ2swoUlHCWxMlAY3hLW0YPN9TzUyhIy",
#   # {
#   #     :secure_image_url => 'true',
#   #     :image_size => 'original',
#   #     :authorize_params => {
#   #       :force_login => 'true',
#   #       :lang => 'pt'
#   #     }
# end
