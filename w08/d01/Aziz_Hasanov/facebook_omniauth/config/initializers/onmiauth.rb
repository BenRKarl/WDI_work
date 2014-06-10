Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['676921439048309'], ENV['e7eebae6b054792533bc88d280e7d7fe']
end