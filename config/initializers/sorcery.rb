Rails.application.config.sorcery.submodules = [:external]

Rails.application.config.sorcery.configure do |config|
  config.user_config do |user|
    user.authentications_class = Authentication
  end
  config.external_providers = [:twitter]
  config.twitter.key = ENV["TWITTER_COSUMER_KEY"]
  config.twitter.secret = ENV["TWITTER_COSUMER_SECRET"]
  config.twitter.callback_url = ENV["TWITTER_CALLBACK_URL"]
  config.user_class = "User"
end
