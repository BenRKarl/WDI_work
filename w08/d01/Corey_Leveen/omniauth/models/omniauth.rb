  use Rack::Session::Cookie
  use OmniAuth::Strategies::Developer

use OmniAuth::Builder do
  provider :instagram, ENV['87fe1bf82ae54fd794e4867066e88ff1'], ENV['e90858766e4749cf85509ae990c45457']
end

