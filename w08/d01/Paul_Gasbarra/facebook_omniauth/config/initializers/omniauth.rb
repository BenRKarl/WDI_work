Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK'], ENV['FACEBOOK_SECRET']
end
