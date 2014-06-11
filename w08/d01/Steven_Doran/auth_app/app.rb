require 'bundler/setup'
Bundler.require

use Rack::Session::Cookie
use OmniAuth::Builder do
  provider :twitter, 'rCAsR9AqaalYbig8SmanGPMor', 'hMtUR8Xdhnl72K5adv2warZq7z2ViLaUWzHySEB5fkgdR6NHUE'
end

get '/' do
 
  erb :index
end


get '/auth/failure' do 

  'Failure'

end

get '/auth/twitter/callback' do
  erb :show
end



# API key               rCAsR9AqaalYbig8SmanGPMor
# API secret            hMtUR8Xdhnl72K5adv2warZq7z2ViLaUWzHySEB5fkgdR6NHUE
# Access token          46446285-6gYvEXeGHYzeqk6W70AWSLgACRxCl5xq9C1mjr8GM
# Access token secret   8pqRBWw42QxVDSaLYCL3QDXxUQDwYZqK9bHWIzQW7CYGm








