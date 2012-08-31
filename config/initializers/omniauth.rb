OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :facebook, ENV['FACEBOOK-APPID'], ENV['FACEBOOK-SECRET']
end