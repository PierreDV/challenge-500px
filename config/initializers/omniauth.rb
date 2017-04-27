Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :fiveHundredPx, ENV['consumer_key'], ENV['consumer_secret']
end
