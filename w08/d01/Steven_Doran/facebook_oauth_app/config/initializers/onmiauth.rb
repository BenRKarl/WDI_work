Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['768725016505074'], ENV['72f2a43df89c3e10388b9808e51521cf']
end