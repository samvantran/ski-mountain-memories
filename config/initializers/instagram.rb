Instagram.configure do |config|
  config.client_id = ENV["INSTAGRAM_CLIENT_ID"]
  config.client_secret = ENV["INSTAGRAM_SECRET_ID"]
  config['instagram_ssl_verify'] = false
end