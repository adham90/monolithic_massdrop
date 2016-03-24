Devise.setup do |config|
  config.omniauth :facebook, Rails.application.secrets.facebook_key, Rails.application.secrets.facebook_secret
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.secret_key = 'cdff010c561ad2bd11554d0c47fb91bd0721705fbaf9fefc0ac7f3e604931f7a1d847bbb1a41ec2c64945284049b1563bca80cb87ea18af3db65a17aa71decc1'
end
