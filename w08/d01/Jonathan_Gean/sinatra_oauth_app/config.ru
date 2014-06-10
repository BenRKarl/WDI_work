require 'sinatra'
require 'omniauth-twitter'

configure do
  enable :sessions

  use OmniAuth::Builder do
    provider :twitter, "d9MzKyWBvtREqytZjKzEwxkl3", "iJ5jRoAPcyP9oouNvDuQ2swoUlHCWxMlAY3hLW0YPN9TzUyhIy"
  end
end
